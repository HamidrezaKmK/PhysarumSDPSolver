//
// Created by ShengDeBao on 3/13/2021.
//

#ifndef SDPSOLVER_GENERALIZEDEIGENVALUESOLVER_H
#define SDPSOLVER_GENERALIZEDEIGENVALUESOLVER_H


#include "BaseSDPSolver.h"

class GeneralizedEigenvalueSolver : public BaseSDPSolver {
private:
    MatrixList A_hats;
    MatrixList A_bars;
    MatrixX M;
    MatrixX Q;
    VectorX p;
    void calculate_A_hats_bars(Eigen::GeneralizedSelfAdjointEigenSolver<MatrixX>* solver);
    void calculate_Q(Eigen::GeneralizedSelfAdjointEigenSolver<MatrixX>* solver);
    void calculate_M();
protected:
    SDPResult iterate() noexcept override;

};


#endif //SDPSOLVER_GENERALIZEDEIGENVALUESOLVER_H
