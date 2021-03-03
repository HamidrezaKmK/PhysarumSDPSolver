#include "BaseSDPSolver.h"

void BaseSDPSolver::input() noexcept {
	using namespace std;
    enum class InputStates {
        M = 1,
        N_BLOCK = 2,
        BLOCK_DESC = 3,
        C = 4,
        MATRICES = 5
    };

    foutInputSummary << "---Entering Standard input---\n";
    size_t block_count;
    vector<int> blocks, blocks_partial_sum;

    string line;


    InputStates state = InputStates::M;
    while (getline(cin, line)) {
        if (line[0] == '"' || line[0] == '*')
            continue;
        switch (state) {
            // Get the number of matrices:
            case InputStates::M: {
                stringstream ss(line);
                ss >> matrices_count;
                state = InputStates::N_BLOCK;
                break;
            }
            // Initialize block structure:
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
                foutInputSummary << "Matrix dimensions are = " << matrices_dimension << endl;
                C = MatrixX(matrices_dimension, matrices_dimension);
                C.setZero(matrices_dimension, matrices_dimension);
                state = InputStates::C;
                break;
            }
            case InputStates::C: {
                stringstream ss(line);
                b = Eigen::VectorXd(matrices_count);
                for (size_t i = 0; i < matrices_count; i++)
                    ss >> b(i);
                foutInputSummary << "Vector \"b\":\n";
                foutInputSummary << b << endl;
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
    foutInputSummary << "Matrix \"C\":\n";
    foutInputSummary << C << endl;
    for (int i = 0; i < (int) matrices_list.size(); i++) {
        foutInputSummary << "Matrix No." << i+1 << ":\n";
        foutInputSummary << matrices_list[i] << endl;
    }
    foutInputSummary << "---End of input---\n";

}

auto BaseSDPSolver::calc() -> SDPResult
{
    double DELTA;
    this->C *= -1;
    Eigen::SelfAdjointEigenSolver<MatrixX> solver;
    solver.compute(this->C);
    double min_lambda = solver.eigenvalues().minCoeff();
    if (min_lambda < 0) {
        foutIterationSummary << "Negative eigenvalue detected for matrix C!" << std::endl;
        DELTA = 1;
        MatrixX tmp_C = this->C - (1 + DELTA) * min_lambda * MatrixX::Identity(matrices_dimension, matrices_dimension);
        foutIterationSummary << "Optimization for \"C\" equal to:\n" << tmp_C << std::endl;
        solver.compute(tmp_C);
        foutIterationSummary << "With eigenvalues:\n" << solver.eigenvalues() << std::endl;

        // add the new constraint
        VectorX sv_b = this->b;
        matrices_list.push_back(MatrixX::Identity(matrices_dimension, matrices_dimension));
        matrices_count++;
        foutIterationSummary << "The \"A_i\"s and \"b\" should change!\nThese are A_i's before changing:" << std::endl;
        this->b = VectorX::Zero(matrices_count);
        this->b(matrices_count-1) = 1;
        for (size_t i = 0; i < matrices_count; i++)
            foutIterationSummary << "A_" << i << "\n" << matrices_list[i] << std::endl;
        std::cerr << "b:\n" << this->b << std::endl;

        foutIterationSummary << "========== Start optimization problem ===========" << std::endl;

        SDPResult res = calc_pos_def(solver.eigenvectors(), solver.eigenvalues());
        matrices_count--;
        matrices_list.pop_back();
        this->b = sv_b;
        foutIterationSummary << "========== End optimization problem ===========\n";

        foutIterationSummary << "These are A_i's after the optimization:" << std::endl;
        for (size_t i = 0; i < matrices_count; i++)
            foutIterationSummary << "A_" << i << "\n" << matrices_list[i] << std::endl;
        tmp_C = this->C;
        for (size_t i = 0; i < matrices_count; i++)
            tmp_C = tmp_C - matrices_list[i] * res.y(i);
        foutIterationSummary << "calculating C - A1*y1 - A2*y2 - ..." << std::endl;
        foutIterationSummary << "this is the C:" << std::endl << tmp_C << std::endl;
        solver.compute(tmp_C);
    } else {
        foutIterationSummary << "this is the C:" << std::endl << this->C << std::endl;
    }
    foutIterationSummary << "eigenvalues: " << solver.eigenvalues() << std::endl;
    foutIterationSummary << "========== Start optimization problem ===========" << std::endl;
    SDPResult res = calc_pos_def(solver.eigenvectors(), solver.eigenvalues());
    foutIterationSummary << "========== End optimization problem ===========" << std::endl;
    res.y *= -1;
    return res;
}

auto BaseSDPSolver::calc_pos_def(Eigen::SelfAdjointEigenSolver<MatrixX>::EigenvectorsType eigenvectors,
                                 Eigen::SelfAdjointEigenSolver<MatrixX>::RealVectorType eigenvalues) -> SDPResult
{
    for (size_t i = 0; i < matrices_dimension; ++i)
    {
        auto &lambda = eigenvalues[i];
        if (lambda <= 0)
            throw "Matrix not positive definite in calc_pos_def!";
        else
            lambda = sqrt(lambda);
    }
    this->R_prime = this->R_double_prime
            = eigenvectors * eigenvalues.asDiagonal() * eigenvectors.transpose();
    for (size_t i = 0; i < matrices_count; i++) {
        matrices_list[i] = R_prime.inverse() * matrices_list[i] * R_double_prime.inverse();
    }

    SDPResult res = iterate();

    // revert changes:
    res.setX(this->R_double_prime.inverse() * res.W * res.W * this->R_prime.inverse());
    for (size_t i = 0; i < matrices_count; i++) {
        matrices_list[i] = R_prime * matrices_list[i] * R_double_prime;
    }
    return res;
}

const std::string &BaseSDPSolver::getInputSummaryFileAddress() const {
    return inputSummaryFileAddress;
}

void BaseSDPSolver::setInputSummaryFileStream(const std::string &inputSummaryFileAddress) {
    BaseSDPSolver::inputSummaryFileAddress = inputSummaryFileAddress;
    foutInputSummary = std::ofstream(inputSummaryFileAddress);
}

const std::string &BaseSDPSolver::getIterationSummaryFileAddress() const {
    return iterationSummaryFileAddress;
}

void BaseSDPSolver::setIterationSummaryFileStream(const std::string &iterationSummaryFileAddress) {
    BaseSDPSolver::iterationSummaryFileAddress = iterationSummaryFileAddress;
    foutIterationSummary = std::ofstream(iterationSummaryFileAddress);
}

bool BaseSDPSolver::checkHasFeasibleAnswer() {
    Eigen::MatrixXd M(matrices_count, matrices_dimension * matrices_dimension);
    for (size_t i = 0; i < matrices_count; i++) {
        // TODO: complete implementation
        M.block(i,0,1,matrices_dimension * matrices_dimension) = matrices_list[i];
    }
    return true;
}

