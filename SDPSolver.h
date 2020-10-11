#ifndef ALGORITHM_01_
#define ALGORITHM_01_

#include <bits/stdc++.h>
#include <memory>
#include <Eigen/Dense>
#include <unsupported/Eigen/MatrixFunctions>

template <size_t N, typename ElementType = double>
class SDPSolver
{
public:
    typedef Eigen::Matrix<ElementType, N, N> MatrixN;

    SDPSolver(int matrices) noexcept;
    void input(const std::string& filename) noexcept;
    MatrixN calc() noexcept;

private:
    typedef std::vector<MatrixN> MatrixList;
    typedef Eigen::Matrix<ElementType, Eigen::Dynamic, 1> VectorX;

    size_t matrices_count;
    MatrixList matrices_list;
    MatrixN w;
    VectorX b;
};

#include "SDPSolver-inl.h"
#endif
