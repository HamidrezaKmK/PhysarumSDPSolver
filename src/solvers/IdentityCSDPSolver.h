//
// Created by ShengDeBao on 3/21/2021.
//

#ifndef SDPSOLVER_IDENTITYCSDPSOLVER_H
#define SDPSOLVER_IDENTITYCSDPSOLVER_H


#include "BaseSDPSolver.h"

class IdentityCSDPSolver : public BaseSDPSolver {
protected:
    SDPResult calc_pos_def() override;
};


#endif //SDPSOLVER_IDENTITYCSDPSOLVER_H
