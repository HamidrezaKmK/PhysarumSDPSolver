#include "SDPSolver.h"

using namespace std;

void SDPSolver::input(const std::string &filename) noexcept {
    ifstream fin(filename);
    if (!fin.good())
        return;

    int block_count;
    vector<int> blocks, blocks_partial_sum;

    string line;
    enum inputStates {
        M, N_BLOCK, BLOCK_DESC, C, MATRICES
    } state;
    state = M;
    while (getline(fin, line)) {
        if (line[0] == '"' || line[0] == '*')
            continue;
        switch (state) {
            case M:
                stringstream ss(line);
                ss >> matrices_count;
                state = N_BLOCK;
                break;
            case N_BLOCK:
                stringstream ss(line);
                ss >> block_count;
                blocks.resize(block_count);
                blocks_partial_sum(block_count + 1);
                state = BLOCK_DESC;
                break;
            case BLOCK_DESC:
                for (int i = 0; i < (int) line.size(); i++)
                    if (line[i] == ',' || line[i] == '(' || line[i] == ')' || line[i] == '{' || line[i] '}')
                line[i] = ' ';
                stringstream ss(line);
                matrices_dimension = 0;
                blocks_partial_sum[0] = 0;
                for (int i = 0; i < block_count; i++) {
                    ss >> blocks[i];
                    matrices_dimension += abs(blocks[i]);
                    blocks_partial_sum[i + 1] = blocks_partial_sum[i] + blocks[i];
                }
                for (int i = 0; i < matrices_count; i++)
                    matrices_list.emplace_back(matrices_dimension, matrices_dimension);
                state = C;
                break;
            case C:
                stringstream ss(line);
                b = Eigen::VectorXd(matrices_count);
                for (int i = 0; i < matrices_count; i++)
                    ss >> b(i);
                state = MATRICES;
                break;
            case MATRICES:
                stringstream ss(line);
                int matno, blckno, r, c;
                double entry;
                ss >> matno >> blckno >> r >> c >> entry;
                MatrixX *M;
                M = (matno == 0) ? &w : &matrices_list[matno - 1];
                M->(blocks_partial_sum[blckno - 1] + r, blocks_partial_sum[blckno - 1] + c) = entry;
                break;
        }
    }


//    fin >> matrices_dimension >> matrices_count;
//
//    for (size_t index = 0; index < matrices_count; ++index) {
//        matrices_list.emplace_back(matrices_dimension, matrices_dimension);
//
//        for (size_t i = 0; i < matrices_dimension; ++i)
//            for (size_t j = 0; j < matrices_dimension; ++j)
//                fin >> matrices_list[index](i, j);
//    }
//    b = Eigen::VectorXd(matrices_count);
//    for (size_t i = 0; i < matrices_count; ++i)
//        fin >> b(i);
//
//    w = MatrixX(matrices_dimension, matrices_dimension);
//    for (size_t i = 0; i < matrices_dimension; ++i)
//        for (size_t j = 0; j < matrices_dimension; ++j)
//            fin >> w(i, j);
}


auto SDPSolver::calc() noexcept -> MatrixX {
    MatrixX w_tilda = w;

    Eigen::SelfAdjointEigenSolver <MatrixX> solver;

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

        std::cerr << q << std::endl << "H: " << h << std::endl;

        std::cerr << "Calculating X..." << std::endl;
        std::cerr << "W_tilda:" << std::endl << w_tilda << std::endl;
        std::cerr << "I - hsbar:" << std::endl
                  << (MatrixX::Identity(matrices_dimension, matrices_dimension) - h * s_bar) << std::endl;

        //we want to compute I xor W-1 + W-1 xor I in Z
        MatrixX w_tilda_inverse = w_tilda.inverse();
        MatrixX Z(matrices_dimension * matrices_dimension, matrices_dimension * matrices_dimension);

        for (size_t i = 0; i < matrices_dimension * matrices_dimension; i++) {
            for (size_t j = 0; j < matrices_dimension * matrices_dimension; j++) {
                size_t i1 = i / matrices_dimension, j1 = j / matrices_dimension;
                size_t i2 = i % matrices_dimension, j2 = j % matrices_dimension;
                Z(i, j) = 0;
                if (i1 == j1) Z(i, j) += w_tilda_inverse(i2, j2);
                if (i2 == j2) Z(i, j) += w_tilda_inverse(i1, j1);
            }
        }
        std::cerr << "I xor W-1 + W-1 xor I" << std::endl << Z << std::endl;

        VectorX vec_s = Eigen::VectorXd(matrices_dimension * matrices_dimension);

        for (size_t i=0; i<matrices_dimension; i++) {
            for (size_t j = 0; j < matrices_dimension; j++) {
                vec_s(i + j * matrices_dimension) = s_bar(i, j);
            }
        }

        std::cerr << "vec(S)" << std::endl << vec_s << std::endl;

        //Z . vec_w_dot = -vec_s
        VectorX vec_w_dot = Z.llt().solve(-vec_s);
        std::cerr << "vec(w_dot)" << std::endl << vec_w_dot << std::endl;


        //w = w + h * w_dot
        for (size_t i=0; i<matrices_dimension; i++)
            for (size_t j=0; j<matrices_dimension; j++)
                w_tilda(i, j) += h * vec_w_dot(i + j * matrices_dimension);

        std::cerr << "new w_tilda" << std::endl << w_tilda << std::endl;

    }

    return w_tilda;
}
