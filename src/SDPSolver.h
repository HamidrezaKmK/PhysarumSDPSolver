#ifndef SDP_SOLVER_
#define SDP_SOLVER_

#include "BaseSDPSolver.h"

class SDPSolver : public BaseSDPSolver
{
public:
	void input() noexcept override;
	MatrixX calc() noexcept override;
};

#endif
