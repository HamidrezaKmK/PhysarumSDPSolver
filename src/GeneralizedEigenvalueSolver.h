//
// Created by ShengDeBao on 3/13/2021.
//

#ifndef SDPSOLVER_GENERALIZEDEIGENVALUESOLVER_H
#define SDPSOLVER_GENERALIZEDEIGENVALUESOLVER_H


#include "BaseSDPSolver.h"

class GeneralizedEigenvalueSolver : public BaseSDPSolver {
private:
    MatrixList A_hats;
    MatrixX M;
    MatrixX Q, Q_tilde;
    VectorX p;
    void calculate_A_hats_bars(Eigen::GeneralizedSelfAdjointEigenSolver<MatrixX>* solver);
    void calculate_Q(Eigen::GeneralizedSelfAdjointEigenSolver<MatrixX>* solver);
    void calculate_Q_tilde(Eigen::GeneralizedSelfAdjointEigenSolver<MatrixX>* solver);
    void calculate_M();
protected:
    double calculate_current_h() override;

    SDPResult iterate() noexcept override;

};


#endif //SDPSOLVER_GENERALIZEDEIGENVALUESOLVER_H
