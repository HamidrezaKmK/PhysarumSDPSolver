from typing import Optional, List, Callable, Tuple

import numpy as np
from debugpy._vendored.pydevd._pydev_bundle.pydev_override import overrides
from yacs.config import CfgNode

from physarum_sdp.config import METHODS
from physarum_sdp.matrix_utils.base_matrix import BaseMatrix
from physarum_sdp.matrix_utils.dense_matrix import DenseMatrix
from physarum_sdp.solvers.base_solvers import PhysarumSDPSolver


class LegacySolver(PhysarumSDPSolver):
    def __init__(self, cfg: CfgNode, linear_conditions: List[BaseMatrix], b: np.array, C: BaseMatrix,
                 X0: Optional[BaseMatrix] = None, verbose: int = 0, legacy_function: Callable = None):
        if type(C) is not DenseMatrix:
            raise Exception("Legacy solvers are only implemented on dense matrix types")
        for cond in linear_conditions:
            if type(cond) is not DenseMatrix:
                raise Exception("Legacy solvers are only implemented on dense matrix types")

        super().__init__(cfg, linear_conditions, b, C, X0, verbose)
        self.gap = None
        self.count = None
        self.max_error = None
        self.infeasibility = None
        self.original_C = None

        self.legacy_function = legacy_function

    def preprocess(self) -> None:
        self.original_C = self.C
        super().preprocess()

    def core_solve(self) -> Tuple[BaseMatrix, Optional[np.array]]:
        X_opt, y, gap, count, max_error, infeasibility = self.legacy_function(self.C.content, self.X.content,
                                                                              self.m, self.n,
                                                                              [x.content for x in
                                                                               self.linear_conditions],
                                                                              self.b,
                                                                              self.solver_cfg.ITERATION_COUNT,
                                                                              self.solver_cfg.RESTART_FACTOR,
                                                                              self.solver_cfg.H,
                                                                              self.solver_cfg.EPOCH_COUNT,
                                                                              self)
        self.gap = gap
        self.count = count
        self.max_error = max_error
        self.infeasibility = infeasibility
        return DenseMatrix(X_opt), y

    def postprocess(self, X: BaseMatrix, p: Optional[np.array]) -> Tuple[BaseMatrix, Optional[np.array]]:

        if self.preprocessing_cfg.AUGMENTATION.HAS_AUGMENTATION:
            self.add_output_line("[Augmented Setting]\n")
            beta = X[self.n - 1, self.n - 1]
            X = X.submat(0, 0, self.n - 1)
            self.add_output_line("This is beta: {}\n".format(beta))
        else:
            self.add_output_line("[General Setting]\n")

        self.add_output_line(
            "Primal solution:\n{}\nDual solution:\n{}\nTr(CX) = {}\n".format(X, p, self.original_C.dot(X).trace()))
        self.add_output_line("Primal and dual gap: {}\n".format(self.gap))
        self.add_output_line("Number of iterations: {}\n".format(self.count - 1))
        self.add_output_line("Max error in symmetry of Q: {}\n".format(self.max_error))
        self.add_output_line("Maximum h bound: {}\n".format(self.solver_cfg.H))
        self.add_output_line("Restart factor: {}\n".format(self.solver_cfg.RESTART_FACTOR))
        self.add_output_line("Infeasibility: {}\n".format(self.infeasibility))
        self.add_output_line("Time spent (seconds): {}\n".format(self.get_time_spent()))
        return X, p
