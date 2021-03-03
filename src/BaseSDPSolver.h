#ifndef BASE_SDP_SOLVER_
#define BASE_SDP_SOLVER_

#include "bits/stdc++.h"
#include <memory>
#include <Eigen/Dense>
#include <unsupported/Eigen/MatrixFunctions>
#include "SDPResult.h"

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
	SDPResult calc();
    bool checkHasFeasibleAnswer();
    bool checkAnswerBounded();

protected:
    std::string inputSummaryFileAddress;
    std::string iterationSummaryFileAddress;
    std::ofstream foutInputSummary;
    std::ofstream foutIterationSummary;

public:
    const std::string &getInputSummaryFileAddress() const;

    void setInputSummaryFileStream(const std::string &inputSummaryFileAddress);

    const std::string &getIterationSummaryFileAddress() const;

    void setIterationSummaryFileStream(const std::string &iterationSummaryFileAddress);

protected:

    typedef std::vector<MatrixX> MatrixList;
	virtual SDPResult iterate() noexcept = 0;
	/**
	 * calculates the answer for a SDP problem with positive definite C
	 * the input parameters are the normalized eigenvectors and eigenvalues
	 * of C
	 */
	SDPResult calc_pos_def(Eigen::SelfAdjointEigenSolver<MatrixX>::EigenvectorsType eigenvectors,
							Eigen::SelfAdjointEigenSolver<MatrixX>::RealVectorType eigenvalues);
	/** calculates the sqrt of matrix A and gives exception
	 * when it is not positive definite
	 */
	MatrixX calc_sqrt(MatrixX A);
	/** Changes the SDP problem such that C becomes identity
	 * Supported for problems with Positive/Negative definite C
	 * Semi-definiteness is "not" handled!
	 */
	void standardize_input();
	/// Revert the changes made in standardize_input function.
	SDPResult revert_to_c(SDPResult res) noexcept;

	size_t matrices_dimension;
	size_t matrices_count;
	MatrixList matrices_list;
	MatrixX w, C;
	VectorX b;
	MatrixX R_prime, R_double_prime;
	bool is_C_pos_definite, is_C_neg_definite;
};

#endif
