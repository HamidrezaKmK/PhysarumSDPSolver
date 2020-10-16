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
	/*
	 * The function gets the input using the
	 * input stream using the standard format explained in "testData/FORMAT"
	 * after running this function the values of constraint matrices, W, and b
	 * will be initialized
	 */
	virtual void input() noexcept = 0;
	virtual MatrixX calc() noexcept = 0;

protected:
	typedef std::vector<MatrixX> MatrixList;
	typedef Eigen::Matrix<ElementType, Eigen::Dynamic, 1> VectorX;

	size_t matrices_dimension;
	size_t matrices_count;
	MatrixList matrices_list;
	MatrixX w, C;
	VectorX b;
};

#endif
