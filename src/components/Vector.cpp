//
// Created by ShengDeBao on 3/1/2021.
//

#include <iostream>
#include "Vector.h"

double SDPComponents::Vector::get(int index) {
    switch (tp) {
        case SDPComponents::Vector::Type::DYNAMIC:
            return vectorX(index);
        case SDPComponents::Vector::Type::STATIC:
            return vectorStatic(index);
        default:
            assert("Error at getting index!");
            break;
    }
    return -1;
}

void SDPComponents::Vector::set (int index, double value) {
    switch (tp) {
        case SDPComponents::Vector::Type::DYNAMIC:
            vectorX(index) = value;
            break;
        case SDPComponents::Vector::Type::STATIC:
            vectorStatic(index) = value;
            break;
        default:
            assert("error at setting index!");
            break;
    }
}

SDPComponents::Vector::Vector(bool isDynamic) {
    tp = SDPComponents::Vector::Type::DYNAMIC;
    vectorX = Eigen::Matrix<double, Eigen::Dynamic, 1>();
}

SDPComponents::Vector::Vector(int size) {
    tp = SDPComponents::Vector::Type::STATIC;
    vectorStatic = Eigen::VectorXd(size);
}
