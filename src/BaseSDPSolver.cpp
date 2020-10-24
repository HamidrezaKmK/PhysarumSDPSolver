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
    cerr << "---Entering Standard input---";
    size_t block_count;
    vector<int> blocks, blocks_partial_sum;

    string line;


    InputStates state = InputStates::M;
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
                for (size_t i = 0; i < matrices_count; i++)
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

void BaseSDPSolver::input_simple() noexcept
{
	std::cin >> matrices_dimension >> matrices_count;

	for (size_t index = 0; index < matrices_count; ++index)
	{
		matrices_list.emplace_back(matrices_dimension, matrices_dimension);

		for (size_t i = 0; i < matrices_dimension; ++i)
			for (size_t j = 0; j < matrices_dimension; ++j)
				std::cin >> matrices_list[index](i, j);
	}

	b = Eigen::VectorXd(matrices_count);
	for (size_t i = 0; i < matrices_count; ++i)
		std::cin >> b(i);

	w = MatrixX(matrices_dimension, matrices_dimension);
	for (size_t i = 0; i < matrices_dimension; ++i)
		for (size_t j = 0; j < matrices_dimension; ++j)
			std::cin >> w(i, j);

	C = -MatrixX::Identity(matrices_dimension, matrices_dimension);
}

auto BaseSDPSolver::calc() -> MatrixX
{
	standardize_input();
	
	return revert_to_c(iterate());
}

auto BaseSDPSolver::calc_sqrt(MatrixX A) -> MatrixX
{
    using namespace Eigen;
    std::cerr << "---Calculating the SQRT of:\n" << A << '\n';
    SelfAdjointEigenSolver<MatrixX> solver;
    solver.compute(A);
    auto eigenvalues = solver.eigenvalues();
    for (size_t i = 0; i < matrices_dimension; ++i)
    {
        auto &lambda = eigenvalues[i];
        if (lambda <= 0)
            throw "Matrix does not have a unique square root!";
        else
            lambda = sqrt(lambda);
    }
    std::cerr << "Eigenvalues:" << std::endl
              << eigenvalues << std::endl;
    std::cerr << "Eigenvectors:" << std::endl
              << solver.eigenvectors() << std::endl;
    MatrixX ret = solver.eigenvectors() * eigenvalues.asDiagonal() * solver.eigenvectors().transpose();
    std::cerr << "SQRT:\n" << ret << '\n';
    std::cerr << "---End of sqrt calculation---\n";
    return ret;
}

void BaseSDPSolver::standardize_input()
{
    using namespace Eigen;
    using namespace std;
	cerr << "\n--- Standardizing input ----\n";
	this->is_C_pos_definite = false;
	this->is_C_neg_definite = false;
	try {
	    this->R_prime = this->R_double_prime = this->calc_sqrt(-C);
	    this->is_C_neg_definite = true;
	} catch (const char * msg) {
	    throw "C is not negative definite!";
	    //TODO handling positive definite C's
	}
    cerr << "R_prime:\n" << R_prime << "\nR_double_prime:\n" << R_double_prime << "\n";
	if (this->is_C_pos_definite)
	    R_prime = -1 * R_prime;
	cerr << "Is C negative definite = " << this->is_C_neg_definite << '\n';
	cerr << "Is C positive definite = " << this->is_C_pos_definite << '\n';
    cerr << "New values of A_i's:\n";
    for (int i = 0; i < (int) matrices_list.size(); i++) {
        matrices_list[i] = R_prime.inverse() * matrices_list[i] * R_double_prime.inverse();
        cerr << "A_" << i+1 << '\n';
        cerr << matrices_list[i] << '\n';
    }
    cerr << "--- End of Standardization ---\n";
}

auto BaseSDPSolver::revert_to_c(MatrixX w_tilda) noexcept -> MatrixX
{
	using namespace std;
	cerr << "-------- THIS IS THE ANSWER!!!! ------\n";
    cerr << "ANS:\n";
    MatrixX standardized_ans = w_tilda * w_tilda;
    MatrixX ans = (this->R_double_prime.inverse() * standardized_ans * this->R_prime.inverse());
    if (this->is_C_pos_definite)
        ans = -1 * ans;
    cerr << ans << '\n';
    cerr << "Feasibility check:\n";
    for (size_t i = 0; i < this->matrices_list.size(); i++) {
        cerr << "tr(A_" << i+1 << "X) = " << (matrices_list[i] * standardized_ans).trace() << '\n';
        cerr << "b" << i+1 << " = " << this->b[i] << '\n';
    }
    cerr << "Trace Of CtX: " << (ans * this->C).trace() << "\n";

    return ans;
}