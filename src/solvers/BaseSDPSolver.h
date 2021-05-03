#ifndef BASE_SDP_SOLVER_
#define BASE_SDP_SOLVER_

#include "bits/stdc++.h"
#include <memory>
#include <Eigen/Dense>
#include <unsupported/Eigen/MatrixFunctions>
#include "SDPResult.h"

#define EPS 1e-10

class BaseSDPSolver
{
public:
	typedef double ElementType;
	typedef Eigen::Matrix<ElementType, Eigen::Dynamic, Eigen::Dynamic> MatrixX;
	typedef Eigen::Matrix<ElementType, Eigen::Dynamic, 1> VectorX;

	BaseSDPSolver() = default;

	/** The function gets the input using the
	 * input stream using the standard format explained in "testSet/FORMAT"
	 * after running this function the values of constraint matrices, W, and b
	 * will be initialized
	 */
	void input() noexcept;
	void setIterationInfo();
	SDPResult calc();
	bool checkHasFeasibleAnswer();
    bool checkAnswerBounded();

protected:
    std::string inputSummaryFileAddress;
    std::string iterationSummaryFileAddress;
    std::string iterationInfoFileAddress;
    std::ofstream foutInputSummary;
    std::ofstream foutIterationSummary;
    std::ifstream finIterationInfo;
public:
	const std::ifstream &getIterationInfoFileAddress() const;

	void setIterationInfoFileAddress(const std::string &iterationInfoFileAddress);

    const std::string &getInputSummaryFileAddress() const;

    void setInputSummaryFileStream(const std::string &inputSummaryFileAddress);

    const std::string &getIterationSummaryFileAddress() const;

    void setIterationSummaryFileStream(const std::string &iterationSummaryFileAddress);

    double calculate_current_dual();
    double calculate_current_primal();
    double calculate_current_gap();
	double calculate_current_gap_maxcoeff();
    double calculate_current_infeasibility();
	double calculate_primal(MatrixX T);
	double calculate_dual(VectorX t);
	double calculate_gap(MatrixX T, VectorX t);
    virtual double calculate_current_h();

protected:

    typedef std::vector<MatrixX> MatrixList;
	virtual SDPResult iterate() noexcept = 0;

    virtual /**
	 * calculates the answer for a SDP problem with positive definite C
	 */
	SDPResult calc_pos_def();

	virtual void customInitialization() {

	};

	size_t matrices_dimension;
	size_t matrices_count;
	MatrixList matrices_list;
	MatrixX w, C;
	MatrixX current_X;
	VectorX current_y;
	VectorX b;
	MatrixX R_prime, R_double_prime;
    MatrixX R_prime_pinv, R_double_prime_pinv;

	bool outputSummaryX = false;
    bool outputSummaryMatrices = false;

    enum class UpdateProblemOptions {
        C,
        SLACK_OF_LAST_ITERATION,
        INVERSE_SLACK_OF_LAST_ITERATION
    };

    UpdateProblemOptions update_problem_option = UpdateProblemOptions::C;

public:
    /// The following fields and methods control initializations before calc_pos_def
    bool has_initial_X = false;
    MatrixX initial_X;

	bool should_augment = false;
    double gamma_augment;
	double initial_X_augmented_lower_right_element = 1;

    int iteration_limit = 1000;

    int getIteration_limit() const;

    void setIteration_limit(int iteration_limit);

private:
    /// The following function gets called before calc_pos_def's process
    void changesBeforeIterations(MatrixX &current_X, MatrixList &matrices_list,
                                 size_t &matrices_dimension, MatrixX &C);
    /// The following function gets called after calc_pos_def's process
    void changesAfterIterations(MatrixX &current_X, MatrixList &matrices_list,
                                size_t &matrices_dimension, MatrixX &C);
};

#endif
