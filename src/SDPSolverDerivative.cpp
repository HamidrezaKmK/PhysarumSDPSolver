#include "SDPSolverDerivative.h"
#include "CustomExceptions.h"

using namespace std;

struct MyException : public exception {
    const char * what () const throw () {
        return "C++ Exception";
    }
};

auto SDPSolverDerivative::init_w_tilda(size_t matrices_dimension) noexcept -> MatrixX
{
    MatrixX w_tilda(matrices_dimension, matrices_dimension);
    for (size_t i = 0; i < matrices_dimension; ++i)
        for (size_t j = 0; j < matrices_dimension; ++j)
            w_tilda(i, j) = (i == j) * 100;

    return w_tilda;
}

auto SDPSolverDerivative::iterate() noexcept -> MatrixX {
    constexpr int ITERATION_LIMIT = 500;

    MatrixX w_tilda = init_w_tilda(matrices_dimension);

    Eigen::SelfAdjointEigenSolver<MatrixX> solver;

    ElementType infeasibility = 1;
    ElementType gap = 1;

    int iteration_counter = 0;
    while (iteration_counter < ITERATION_LIMIT && (infeasibility > 1e-4 || gap > 1e-4)) {
        iteration_counter++;
        std::cerr << "---------- Iteration #" << iteration_counter << std::endl;
        infeasibility = 0;
        MatrixList a_hat(matrices_count);
        for (size_t i = 0; i < matrices_count; ++i) {
            a_hat[i] = matrices_list[i] * w_tilda;
            const auto residual = b[i] - w_tilda.cwiseProduct(a_hat[i]).sum();
            infeasibility += abs(residual);
            std::cerr << "b(" << i << ") - tr( A_" << i << " X) = " << residual << std::endl;
        }

        std::cerr << "Infeasibility of current X: " << infeasibility << std::endl;

        MatrixX M(matrices_count, matrices_count);
        for (size_t k = 0; k < matrices_count; ++k)
            for (size_t l = k; l < matrices_count; ++l) {
                const ElementType current_result = a_hat[k].cwiseProduct(a_hat[l].transpose()).sum();
                M(k, l) = M(l, k) = current_result;
            }

        std::cerr << "Solving..." << std::endl;
        VectorX p_hat = M.llt().solve(b);

        MatrixX s_bar = MatrixX::Identity(matrices_dimension, matrices_dimension);
        ElementType bTy = 0;

        for (size_t l = 0; l < matrices_count; ++l) {
            s_bar -= p_hat(l) * matrices_list[l];
            bTy += p_hat(l) * b(l);
        }

        std::cerr << "Eigenvalues..." << std::endl;
        VectorX q = s_bar.eigenvalues().real();
        ElementType h = 0.5 / q.maxCoeff();

        //TODO bTy /= 1 - std::max(0.0, q.minCoeff()); {is it necessary?/ is it correct?}

        std::cerr << q << std::endl
                  << "H: " << h << std::endl;

        std::cerr << "Calculating X..." << std::endl;
        std::cerr << "W_tilda:" << std::endl
                  << w_tilda << std::endl;
        std::cerr << "I - hsbar:" << std::endl
                  << (MatrixX::Identity(matrices_dimension, matrices_dimension) - h * s_bar) << std::endl;

        //we want to compute I xor W-1 + W-1 xor I in Z
        MatrixX w_tilda_inverse = w_tilda.inverse();
        MatrixX Z(matrices_dimension *matrices_dimension, matrices_dimension *matrices_dimension);

        for (size_t i = 0; i < matrices_dimension * matrices_dimension; i++) {
            for (size_t j = 0; j < matrices_dimension * matrices_dimension; j++) {
                size_t i1 = i / matrices_dimension, j1 = j / matrices_dimension;
                size_t i2 = i % matrices_dimension, j2 = j % matrices_dimension;
                Z(i, j) = 0;
                if (i1 == j1)
                    Z(i, j) += w_tilda_inverse(i2, j2);
                if (i2 == j2)
                    Z(i, j) += w_tilda_inverse(i1, j1);
            }
        }
        std::cerr << "I xor W-1 + W-1 xor I" << std::endl
                  << Z << std::endl;

        VectorX vec_s = Eigen::VectorXd(matrices_dimension * matrices_dimension);

        for (size_t i = 0; i < matrices_dimension; i++) {
            for (size_t j = 0; j < matrices_dimension; j++) {
                vec_s(i + j * matrices_dimension) = s_bar(i, j);
            }
        }

        std::cerr << "vec(S)" << std::endl
                  << vec_s << std::endl;

        //Z . vec_w_dot = -vec_s
        VectorX vec_w_dot = Z.llt().solve(-vec_s);
        std::cerr << "vec(w_dot)" << std::endl
                  << vec_w_dot << std::endl;

        //w = w + h * w_dot
        for (size_t i = 0; i < matrices_dimension; i++)
            for (size_t j = 0; j < matrices_dimension; j++)
                w_tilda(i, j) += h * vec_w_dot(i + j * matrices_dimension);

        std::cerr << "new w_tilda" << std::endl
                  << w_tilda << std::endl;

        MatrixX X = w_tilda * w_tilda;
        gap = X.trace() - bTy;
        std::cerr << "Gap between primal and dual solution: " << gap << std::endl;

    }
    cerr << "Answer has been found in " << iteration_counter << " iterations\n";

    return w_tilda;
}
