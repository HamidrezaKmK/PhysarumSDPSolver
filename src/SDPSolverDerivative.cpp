#include "SDPSolverDerivative.h"


using namespace std;

auto SDPSolverDerivative::init_w_tilda(size_t matrices_dimension) noexcept -> MatrixX {
    if (has_initial_X) {
        // TODO: implement an SQRT function in Matrix
        Eigen::SelfAdjointEigenSolver<MatrixX> solver;
        solver.compute(this->initial_X);
        Eigen::SelfAdjointEigenSolver<MatrixX>::EigenvectorsType eigenvectors = solver.eigenvectors();
        Eigen::SelfAdjointEigenSolver<MatrixX>::RealVectorType eigenvalues = solver.eigenvalues();
        for (size_t i = 0; i < matrices_dimension; ++i)
        {
            auto &lambda = eigenvalues[i];
            if (lambda <= 0) {
                std::cerr << "initial matrix X(0) is not positive definite!" << std::endl;
                exit(EXIT_FAILURE);
            }
            else
                lambda = sqrt(lambda);
        }
        return eigenvectors * eigenvalues.asDiagonal() * eigenvectors.transpose();
    } else {
        MatrixX w_tilda(matrices_dimension, matrices_dimension);
        for (size_t i = 0; i < matrices_dimension; ++i)
            for (size_t j = 0; j < matrices_dimension; ++j)
                w_tilda(i, j) = (i == j) * 100;

        return w_tilda;
    }
}

auto SDPSolverDerivative::iterate() noexcept -> SDPResult {

    constexpr int ITERATION_LIMIT = 1000;

    MatrixX w_tilda = init_w_tilda(matrices_dimension);
    VectorX p_hat;

    Eigen::SelfAdjointEigenSolver <MatrixX> solver;

    ElementType infeasibility = 1;
    ElementType gap = 1;

    int iteration_counter = 0;
    while (iteration_counter < ITERATION_LIMIT && (infeasibility > 1e-4 || gap > 1e-4)) {
        iteration_counter++;
        foutIterationSummary << "---------- Iteration #" << iteration_counter << '\n';
        infeasibility = 0;
        MatrixList a_hat(matrices_count);
        for (size_t i = 0; i < matrices_count; ++i) {
            a_hat[i] = matrices_list[i] * w_tilda;
            const auto residual = b[i] - w_tilda.cwiseProduct(a_hat[i]).sum();
            infeasibility += abs(residual);
            //std::cerr << "b(" << i << ") - tr( A_" << i << " X) = " << residual << '\n';
        }

        foutIterationSummary << "Infeasibility of current X: " << infeasibility << std::endl;

        MatrixX M(matrices_count, matrices_count);
        for (size_t k = 0; k < matrices_count; ++k)
            for (size_t l = k; l < matrices_count; ++l) {
                const ElementType current_result = a_hat[k].cwiseProduct(a_hat[l].transpose()).sum();
                M(k, l) = M(l, k) = current_result;
            }

        //std::cerr << "Solving..." << '\n';


        p_hat = M.llt().solve(b);
        //std::cerr << "This is M:\n";
        //std::cerr << M << '\n';
        //std::cerr << "M * p_hat = \n" << M * p_hat << "\n b = \n" << b << '\n';

        MatrixX s_bar = MatrixX::Identity(matrices_dimension, matrices_dimension);
        ElementType bTy = 0;

        for (size_t l = 0; l < matrices_count; ++l) {
            s_bar -= p_hat(l) * matrices_list[l];
            bTy += p_hat(l) * b(l);
        }

        //std::cerr << "Eigenvalues..." << '\n';
        VectorX q = s_bar.eigenvalues().real();
        ElementType h = 0.5 / q.maxCoeff();

        bTy /= 1 - std::min(0.0, q.minCoeff()); //{is it necessary?/ is it correct?}

        //std::cerr << q << std::endl << "H: " << h << '\n';

        //std::cerr << "Calculating X..." << '\n';
        //std::cerr << "W_tilda:" << '\n' << w_tilda << '\n';
        //std::cerr << "I - hsbar:" << '\n'
        //          << (MatrixX::Identity(matrices_dimension, matrices_dimension) - h * s_bar) << '\n';

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
        //std::cerr << "I xor W-1 + W-1 xor I" << '\n' << Z << '\n';

        VectorX vec_s = Eigen::VectorXd(matrices_dimension * matrices_dimension);

        for (size_t i = 0; i < matrices_dimension; i++) {
            for (size_t j = 0; j < matrices_dimension; j++) {
                vec_s(i + j * matrices_dimension) = s_bar(i, j);
            }
        }

        //std::cerr << "vec(S)" << '\n' << vec_s << '\n';

        //Z . vec_w_dot = -vec_s
        VectorX vec_w_dot = Z.llt().solve(-vec_s);
        //std::cerr << "vec(w_dot)" << '\n' << vec_w_dot << '\n';


        //w = w + h * w_dot
        MatrixX w_sv = w_tilda;
        for (size_t i = 0; i < matrices_dimension; i++)
            for (size_t j = 0; j < matrices_dimension; j++)
                w_tilda(i, j) += h * vec_w_dot(i + j * matrices_dimension);

        MatrixX xReal = w_tilda * w_tilda;
        double calc_val = 0;
        for (size_t i = 0; i < matrices_dimension; i++)
            for (size_t j = 0; j < matrices_dimension; j++)
                calc_val += C(i, j) * xReal(i, j);
        foutIterationSummary << "C . X = " << calc_val << std::endl;

        //std::cerr << "new w_tilda" << '\n' << w_tilda << '\n';
        MatrixX X = w_tilda * w_tilda;
        gap = X.trace() - bTy;
        if (gap < 0) {
            std::cout << "Gap is less than zero!" << std::endl;
            std::cout << "Check if the SDP has the following criteria:\n";
            std::cout << "\t- The primal is feasible\n";
            std::cout << "\t- The primal is bounded (The dual is strictly feasible)\n";
            exit(0);
        }
        foutIterationSummary << "Gap between primal and dual solution: " << gap << std::endl;
        foutIterationSummary << "This is C: " << C << std::endl;
        //std::cerr << std::endl;
    }
    foutIterationSummary << "Answer has been found in " << iteration_counter << " iterations\n";

    SDPResult res;
    res.setW(w_tilda);
    res.sety(p_hat);
    res.setInfeasibility(infeasibility);
    res.setIterationCount(iteration_counter);
    res.setGap(gap);

    return res;
}
