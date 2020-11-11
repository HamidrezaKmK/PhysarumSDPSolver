//
// Created by ShengDeBao on 11/3/2020.
//

#ifndef SDPSOLVER_SDPRESULT_H
#define SDPSOLVER_SDPRESULT_H

#include "bits/stdc++.h"
#include <memory>
#include <Eigen/Dense>

class SDPResult {
public:
    typedef double ElementType;
    typedef Eigen::Matrix<ElementType, Eigen::Dynamic, Eigen::Dynamic> MatrixX;
    typedef Eigen::Matrix<ElementType, Eigen::Dynamic, 1> VectorX;
    MatrixX X, W;
    VectorX y;
    int iteration_count;
    double gap;

    SDPResult();
    SDPResult setX(MatrixX X);
    SDPResult sety(VectorX y);
    SDPResult setW(MatrixX W);
    SDPResult setGap(double gap);
    SDPResult setIterationCount(const int &count);
};


#endif //SDPSOLVER_SDPRESULT_H
