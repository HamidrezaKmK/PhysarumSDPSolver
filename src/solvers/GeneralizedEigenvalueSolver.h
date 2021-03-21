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
    MatrixX V;
    VectorX p;
    Eigen::SelfAdjointEigenSolver<MatrixX>::RealVectorType eigenvalues;
    void calculate_A_hats();
    void calculate_Q();
    void calculate_Q_tilde();
    void calculate_M();
protected:
  double calculate_current_h() override;
  double calculate_current_tau();
  
    SDPResult iterate() noexcept override;

};


#endif //SDPSOLVER_GENERALIZEDEIGENVALUESOLVER_H
