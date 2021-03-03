//
// Created by ShengDeBao on 3/1/2021.
//

#include "Matrix.h"

void SDPComponents::Matrix::set(int index_row, int index_column, double value) {
    // TODO: should be implemented for block sparse seperately
    matrixDynamic(index_row, index_column) = value;
}

double SDPComponents::Matrix::get(int index_row, int index_column) {
    return matrixDynamic(index_row, index_column);
}
