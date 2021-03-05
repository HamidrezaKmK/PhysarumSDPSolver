//
// Created by ShengDeBao on 11/3/2020.
//

#include "SDPResult.h"


SDPResult SDPResult::setX(MatrixX X){
    this->X = X;
    return *this;
}

SDPResult SDPResult::setGap(double gap) {
    this->gap = gap;
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

void SDPResult::print() {
    std::cout << "X:\n";
    std::cout << this->X << std::endl;
    std::cout << "y:\n";
    std::cout << this->y << std::endl;
    std::cout << "gap:\n";
    std::cout << this->gap << std::endl;
}

SDPResult SDPResult::addExceptionMsg(const std::string &msg) {
    this->hasException = true;
    this->exceptionMessage += msg;
    return SDPResult();
}
