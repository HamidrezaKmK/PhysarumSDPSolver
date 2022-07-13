from typing import List

import numpy as np
from yacs.config import CfgNode

from physarum_sdp.matrix_utils.base_matrix import BaseMatrix
from physarum_sdp.solvers.base_solvers import PhysarumSDPSolver


class XkronXSolver(PhysarumSDPSolver):
    def __init__(self, cfg: CfgNode, linear_conditions: List[BaseMatrix], b: np.array, C: BaseMatrix):
        super(XkronXSolver, self).__init__(cfg, linear_conditions, b, C)


