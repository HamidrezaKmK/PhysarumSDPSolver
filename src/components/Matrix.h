//
// Created by ShengDeBao on 3/1/2021.
//

#ifndef SDPSOLVER_MATRIX_H
#define SDPSOLVER_MATRIX_H

#include <Eigen/Dense>

namespace SDPComponents {
    class Matrix {
// TODO: method to return list of eigenvalues
// TODO: method to return minimum eigenvalue
// TODO: static method for identity
// TODO: static method for zero matrix
// TODO: method to return eigenvectors as a matrix
// TODO: method to calculate inverse
// TODO: method to transpose matrix
// TODO: method for multiplication


    private:
        enum class Type {
            BLOCK_SPARSE,
            NORMAL
        };
        Eigen::Matrix<double, Eigen::Dynamic, Eigen::Dynamic> matrixDynamic;
    public:
        void set(int index_row, int index_column, double value);
        double get(int index_row, int index_column);
    };
}


#endif //SDPSOLVER_MATRIX_H
