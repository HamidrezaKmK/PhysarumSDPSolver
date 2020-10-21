#include "SDPSolverDerivative.h"

using namespace std;


namespace InputStates {
    enum State {
        M = 1,
        N_BLOCK = 2,
        BLOCK_DESC = 3,
        C = 4,
        MATRICES = 5
    } state;
}

void SDPSolverDerivative::input() noexcept {
    cerr << "---Entering Standard input---";
    int block_count;
    vector<int> blocks, blocks_partial_sum;

    string line;


    InputStates::State state = InputStates::M;
    while (getline(cin, line)) {
        if (line[0] == '"' || line[0] == '*')
            continue;
        cerr << "Input line not comment: " << line << endl;
        switch (state) {
            case InputStates::M: {
                stringstream ss(line);
                ss >> matrices_count;
                cerr << "The number of matrices in input: " << matrices_count << endl;
                state = InputStates::N_BLOCK;
                break;
            }
            case InputStates::N_BLOCK: {
                stringstream ss(line);
                ss >> block_count;
                blocks.resize(block_count);
                blocks_partial_sum.resize(block_count + 1);
                state = InputStates::BLOCK_DESC;
                break;
            }
            case InputStates::BLOCK_DESC: {
                for (int i = 0; i < (int) line.size(); i++)
                    if (line[i] == ',' || line[i] == '(' || line[i] == ')' || line[i] == '{' || line[i] == '}')
                        line[i] = ' ';
                stringstream ss(line);
                matrices_dimension = 0;
                blocks_partial_sum[0] = 0;
                for (size_t i = 0; i < block_count; i++) {
                    ss >> blocks[i];
                    matrices_dimension += abs(blocks[i]);
                    blocks_partial_sum[i + 1] = blocks_partial_sum[i] + blocks[i];
                }
                for (size_t i = 0; i < matrices_count; i++) {
                    matrices_list.emplace_back(matrices_dimension, matrices_dimension);
                    matrices_list.back().setZero(matrices_dimension, matrices_dimension);
                }
                cerr << "Matrix dimensions are = " << matrices_dimension << endl;
                C = MatrixX(matrices_dimension, matrices_dimension);
                C.setZero(matrices_dimension, matrices_dimension);
                state = InputStates::C;
                break;
            }
            case InputStates::C: {
                stringstream ss(line);
                b = Eigen::VectorXd(matrices_count);
                for (int i = 0; i < matrices_count; i++)
                    ss >> b(i);
                cerr << "Vector \"b\":\n";
                cerr << b << endl;
                state = InputStates::MATRICES;
                break;
            }
            case InputStates::MATRICES: {
                stringstream ss(line);
                int matno, blckno, r, c;
                double entry;
                ss >> matno >> blckno >> r >> c >> entry;
                r--, c--;
                r += blocks_partial_sum[blckno - 1];
                c += blocks_partial_sum[blckno - 1];
                if (matno == 0)
                    C(r, c) = C(c, r) = entry;
                else
                    matrices_list[matno - 1](r, c) = matrices_list[matno - 1](c, r) = entry;
                break;
            }
        }
    }
    cerr << "Matrix \"C\":\n";
    cerr << C << endl;
    for (int i = 0; i < (int) matrices_list.size(); i++) {
        cerr << "Matrix No." << i+1 << ":\n";
        cerr << matrices_list[i] << endl;
    }
    cerr << "---End of input---\n";

}

auto SDPSolverDerivative::calc_sqrt(MatrixX A) noexcept -> MatrixX
{
    using namespace Eigen;
    cerr << "---Calculating the SQRT of:\n" << A << '\n';
    SelfAdjointEigenSolver<MatrixX>solver;
    solver.compute(A);
    auto eigenvalues = solver.eigenvalues();
    for (size_t i = 0; i < matrices_dimension; ++i)
    {
        auto &lambda = eigenvalues[i];
        if (lambda < 0)
            lambda = 0;
        else
            lambda = sqrt(lambda);
    }
    std::cerr << "Eigenvalues:" << std::endl
              << eigenvalues << std::endl;
    std::cerr << "Eigenvectors:" << std::endl
              << solver.eigenvectors() << std::endl;
    MatrixX ret = solver.eigenvectors() * eigenvalues.asDiagonal() * solver.eigenvectors().transpose();
    cerr << "SQRT:\n" << ret << '\n';
    cerr << "---End of sqrt calculation---\n";
    return ret;
}

// Changes the SDP problem such that C becomes identity
// *Supported for problems with positive definite C
void SDPSolverDerivative::standardize_input() noexcept
{
    using namespace Eigen;
    cerr << "\n--- Standardizing input ----\n";
    MatrixX C_ = this->calc_sqrt(C);
    cerr << "Sqrt of C:\n" << C_ << "\n";
    cerr << "New values of A_i's:\n";
    for (int i = 0; i < (int) matrices_list.size(); i++) {
        matrices_list[i] = C_.inverse() * matrices_list[i] * C_.inverse();
        cerr << "A_" << i+1 << '\n';
        cerr << matrices_list[i] << '\n';
    }
    cerr << "--- End of Standardization ---\n";
}

auto SDPSolverDerivative::calc() noexcept -> MatrixX {
    this->standardize_input();

    MatrixX w_tilda = w;

    Eigen::SelfAdjointEigenSolver<MatrixX> solver;

    ElementType infeasibility = 1;
    ElementType gap = 1;
    while (infeasibility > 1e-6 || gap > 1e-6) {
        infeasibility = 0;
        MatrixList a_hat(matrices_count);
        for (size_t i = 0; i < matrices_count; ++i) {
            a_hat[i] = matrices_list[i] * w_tilda;
            const auto residual = b[i] - w_tilda.cwiseProduct(a_hat[i]).sum();
            infeasibility += abs(residual);
            std::cerr << "b(" << i << ") - tr( A_" << i << " X) = " << residual << std::endl;
        }

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
        bTy /= 1 - std::max(0.0, q.minCoeff());

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
    }

    return w_tilda;
}
