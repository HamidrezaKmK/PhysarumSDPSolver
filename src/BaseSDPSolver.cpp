#include "GeneralizedEigenvalueSolver.h"
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

    short desc_start = 0;

    while (getline(cin, line)) {
        if (line[0] == '"' || line[0] == '*') {
            if (desc_start < 3) {
                if (desc_start == 0) {
                    foutInputSummary << "DESCRIPTIONS in the beginning of file:\n";
                }
                foutInputSummary << line << '\n';
                desc_start = 1;
            }
            continue;
        }
        desc_start = 3;
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
                for (char &i : line)
                    if (i == ',' || i == '(' || i == ')' || i == '{' || i == '}')
                        i = ' ';
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
                initial_X = MatrixX(matrices_dimension, matrices_dimension);
                initial_X.setZero(matrices_dimension, matrices_dimension);
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
                if (matno == -1) {
                    initial_X(r, c) = initial_X(c, r) = entry;
                    has_initial_X = true;
                } else if (matno == 0)
                    C(r, c) = C(c, r) = entry;
                else
                    matrices_list[matno - 1](r, c) = matrices_list[matno - 1](c, r) = entry;
                break;
            }
        }
    }

    // We should negate the objective matrix because the sdp standard format
    // tries to maximize tr(CTX) but we are trying to minimize it
    C = C * -1;

    foutInputSummary << "Matrix \"C\":\n";
    foutInputSummary << C << endl;
    for (int i = 0; i < (int) matrices_list.size(); i++) {
        foutInputSummary << "Matrix No." << i+1 << ":\n";
        foutInputSummary << matrices_list[i] << endl;
    }
    if (has_initial_X) {
        foutInputSummary << "Initial starting point detected!\n";
        foutInputSummary << "X(0):\n";
        foutInputSummary << initial_X << std::endl;
    }
    foutInputSummary << "Primal: min { tr(C^T X) : For all 1 <= l <= m : tr(A_l^T X) = b_l}\n";
    foutInputSummary << "---End of input---\n";

}

// TODO: extend calc new to all
SDPResult BaseSDPSolver::calc_new() {
    this->setIteration_limit(10000);

    // Initializing phase
    if (has_initial_X)
        this->current_X = initial_X;
    else {
        this->current_X = MatrixX(matrices_dimension, matrices_dimension);
        for (size_t i = 0; i < matrices_dimension; i++)
            this->current_X(i, i) = 1000;
    }

    // Iterations
    int iteration_counter = 0;
    double primal_value, dual_value, gap, infeasibility;
    do {
        // TODO: change the iteration dual of i + 1 is being compared with X of i
        foutIterationSummary << "Iteration #" << iteration_counter << ":\n";
        MatrixX sv_X = this->current_X;
        this->iterate();
        MatrixX nxt_X = this->current_X;
        this->current_X = sv_X;

        iteration_counter++;
        primal_value = this->calculate_current_primal();
        dual_value = this->calculate_current_dual();
        infeasibility = this->calculate_current_infeasibility();
        foutIterationSummary << "Infeasibility: " << infeasibility << '\n';
        foutIterationSummary << "primal value: " << primal_value << "\t\t\t" << "dual value: " << dual_value << '\n';
        gap = primal_value - dual_value;
        foutIterationSummary << "current gap: " << gap << '\n';
        foutIterationSummary << "-----" << std::endl;

        this->current_X = nxt_X;
    } while (iteration_counter < this->getIteration_limit() &&
             (abs(infeasibility) > 1e-5 ||  abs(gap) > 1e-5));

    SDPResult res;
    res.setX(this->current_X);
    res.sety(this->current_y);
    res.setIterationCount(iteration_counter);
    res.setGap(this->calculate_current_gap());
    res.setInfeasibility(this->calculate_current_infeasibility());

    return res;
}

auto BaseSDPSolver::calc() -> SDPResult
{
    if (auto * solver = dynamic_cast<GeneralizedEigenvalueSolver*>(this)) {
        return solver->calc_new();
    }
    double DELTA;
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
    std::cerr << "The eigen values are: " << eigenvalues << std::endl;
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
        Eigen::VectorXd B(Eigen::Map<Eigen::VectorXd>(matrices_list[i].data(), matrices_dimension * matrices_dimension));
        M.block(i,0,1,matrices_dimension * matrices_dimension) = B.transpose();
    }
    Eigen::MatrixXd x = M.fullPivLu().solve(b);
    double relative_error = (M * x - b).norm() / (b.norm());
    if (relative_error > 1e-6) {
        std::cout << "relative error: " << relative_error << " is large!\n";
        return false;
    }
    return true;
}

bool BaseSDPSolver::checkAnswerBounded() {
// TODO: use the correct implementation to determine if an answer exists or not
    return true;
}

double BaseSDPSolver::calculate_current_dual() {
    return this->current_y.dot(this->b) / (1 - std::min(0.0, this->calculate_current_gap_maxcoeff()));
}

double BaseSDPSolver::calculate_current_primal() {
    double primal = 0;
    for (size_t i = 0; i < matrices_dimension; i++)
        for (size_t j = 0; j < matrices_dimension; j++)
            primal += this->C(j, i) * this->current_X(i, j);
    return primal;
}

double BaseSDPSolver::calculate_current_gap() {
    return calculate_current_primal() - calculate_current_dual();
}

double BaseSDPSolver::calculate_current_infeasibility() {
    VectorX diffs(matrices_count);
    for (size_t i = 0; i < matrices_list.size(); i++) {
        double trAiTX = 0;
        for (size_t r = 0; r < matrices_dimension; r++)
            for (size_t c = 0; c < matrices_dimension; c++)
                trAiTX += matrices_list[i](c, r) * current_X(r, c);
        diffs(i) = b(i) - trAiTX;
    }
    return diffs.norm();
}

int BaseSDPSolver::getIteration_limit() const {
    return iteration_limit;
}

void BaseSDPSolver::setIteration_limit(int iteration_limit) {
    BaseSDPSolver::iteration_limit = iteration_limit;
}

double BaseSDPSolver::calculate_current_gap_maxcoeff() {
    MatrixX S = this->C;
    for (size_t i = 0; i < matrices_count; i++) {
        S = S - this->current_y(i) * matrices_list[i];
    }
    VectorX q = S.eigenvalues().real();
    return q.maxCoeff();
}

double BaseSDPSolver::calculate_current_h() {
    return 0.5 / this->calculate_current_gap_maxcoeff();
}



