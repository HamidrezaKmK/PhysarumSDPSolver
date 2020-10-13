#ifndef SDP_SOLVER_
#define SDP_SOLVER_

#include <bits/stdc++.h>
#include <memory>
#include "Eigen/Dense"
//#include "unsupported/Eigen/MatrixFunctions"

class SDPSolver
{
public:
    typedef double ElementType;
    typedef Eigen::Matrix<ElementType, Eigen::Dynamic, Eigen::Dynamic> MatrixX;

    SDPSolver() = default;
    void input(const std::string& filename) noexcept;
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
