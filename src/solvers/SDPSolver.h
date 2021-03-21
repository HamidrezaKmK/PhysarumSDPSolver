#ifndef SDP_SOLVER_
#define SDP_SOLVER_

#include "SDPResult.h"
#include "IdentityCSDPSolver.h"

class SDPSolver : public IdentityCSDPSolver
{
private:
	MatrixX init_w_tilda(size_t matrices_dimension) noexcept;
public:
	SDPResult iterate() noexcept override;

};

#endif
