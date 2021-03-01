//
// Created by ShengDeBao on 3/1/2021.
//

#ifndef SDPSOLVER_MATRIX_H
#define SDPSOLVER_MATRIX_H

#include <Eigen/Dense>

namespace SDPComponents {
    class Matrix {
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
