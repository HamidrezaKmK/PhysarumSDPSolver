//
// Created by ShengDeBao on 11/3/2020.
//

#include "SDPResult.h"


SDPResult SDPResult::setX(MatrixX X){
    this->X = X;
    return *this;
}

SDPResult SDPResult::sety(VectorX y){
    this->y = y;
    return *this;
}

SDPResult SDPResult::setW(MatrixX W) {
    this->W = W;
    return *this;
}

SDPResult SDPResult::setIterationCount(const int &count) {
    this->iteration_count = count;
    return *this;
}

SDPResult::SDPResult() {

}