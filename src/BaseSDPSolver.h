#ifndef BASE_SDP_SOLVER_
#define BASE_SDP_SOLVER_

#include "bits/stdc++.h"
#include <memory>
#include <Eigen/Dense>
#include <unsupported/Eigen/MatrixFunctions>

class BaseSDPSolver
{
public:
	typedef double ElementType;
	typedef Eigen::Matrix<ElementType, Eigen::Dynamic, Eigen::Dynamic> MatrixX;

	BaseSDPSolver() = default;

	/** The function gets the input using the
	 * input stream using the standard format explained in "testSet/FORMAT"
	 * after running this function the values of constraint matrices, W, and b
	 * will be initialized
	 */
	void input() noexcept;
	void input_simple() noexcept;
	MatrixX calc() noexcept;

protected:
	typedef std::vector<MatrixX> MatrixList;
	typedef Eigen::Matrix<ElementType, Eigen::Dynamic, 1> VectorX;

	virtual MatrixX iterate() noexcept = 0;
	MatrixX calc_sqrt(MatrixX A) noexcept;
	/** Changes the SDP problem such that C becomes identity
	 * Supported for problems with Negative definite C
	 */
	void standardize_input() noexcept;
	
	/// Revert the changes made in standardize_input function.
	MatrixX revert_to_c(MatrixX w_tilda) noexcept;

	size_t matrices_dimension;
	size_t matrices_count;
	MatrixList matrices_list;
	MatrixX w, C;
	VectorX b;
	MatrixX R_prime, R_double_prime;
};

#endif
