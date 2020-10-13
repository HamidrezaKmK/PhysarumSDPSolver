#ifndef SDP_SOLVER_
#define SDP_SOLVER_

#include <bits/stdc++.h>
#include <memory>
#include <Eigen/Dense>
#include <unsupported/Eigen/MatrixFunctions>

class SDPSolver
{
public:
    typedef double ElementType;
    typedef Eigen::Matrix<ElementType, Eigen::Dynamic, Eigen::Dynamic> MatrixX;

    SDPSolver() = default;
    /*
     * The function gets the input using the
     * input stream using the standard format explained in "testData/FORMAT"
     * after running this function the values of constraint matrices, W, and b
     * will be initialized
     */
    void input() noexcept;
    MatrixX calc() noexcept;

private:
    typedef std::vector<MatrixX> MatrixList;
    typedef Eigen::Matrix<ElementType, Eigen::Dynamic, 1> VectorX;

    size_t matrices_dimension;
    size_t matrices_count;
    MatrixList matrices_list;
    MatrixX w;
    VectorX b;
};

#endif
