import copy
import os
import time
from typing import List, Optional, Tuple

import numpy as np
from yacs.config import CfgNode

from physarum_sdp.matrix_utils.base_matrix import BaseMatrix



def _create_if_not_available(dir: str):
    if not os.path.exists(dir):
        os.mkdir(dir)


def _augment_problem(
        A: List[BaseMatrix],
        b: np.array,
        C: BaseMatrix,
        gamma: float):
    C_bar = (gamma * C).add_block(1)
    A_bar = []
    C_pinv = C.pinv()
    for i in range(len(A)):
        A_bar.append(A[i].add_block(b[i] - (A[i] * C_pinv).sum() / gamma))
    return A_bar, b, C_bar


class PhysarumSDPSolver:

    def __init__(self, cfg: CfgNode, linear_conditions: List[BaseMatrix], b: np.array, C: BaseMatrix,
                 X0: Optional[BaseMatrix] = None, verbose: int = 0):

        self.solver_cfg = copy.deepcopy(cfg.SOLVER.HYPER_PARAMETERS)
        self.preprocessing_cfg = copy.deepcopy(cfg.SOLVER.PREPROCESSING)
        self._all_cfg = copy.deepcopy(cfg)

        self.linear_conditions = linear_conditions
        self.b = b
        self.C = C
        self.n = self.C.shape[0]
        self.m = len(self.linear_conditions)
        self.X = X0

        self.logs = []
        self.outputs = []
        self.verbose = verbose
        self.time_spent = None

    def add_log_line(self, line: str) -> None:
        self.logs.append(line)

    def add_output_line(self, line: str) -> None:
        self.outputs.append(line)

    def save_logs(self, out_dir: str) -> None:
        _create_if_not_available(out_dir)
        with open(os.path.join(out_dir, 'legacy-logs.txt'), 'w') as f:
            f.writelines(self.logs)

    def save_configs(self, out_dir):
        _create_if_not_available(out_dir)
        # Save the configurations that the problem has been run on
        self._all_cfg.dump(stream=open(os.path.join(out_dir, 'cfg.yaml'), 'w'))

    def save_output(self, out_dir: str) -> None:
        _create_if_not_available(out_dir)
        with open(os.path.join(out_dir, 'legacy-physarum-out.txt'), 'w') as f:
            f.writelines(self.outputs)

    def calc_p_and_xdot(self) -> Tuple[BaseMatrix, Optional[np.array]]:
        """
        This function returns the Xdot according to the dynamic
        it can also return a dual candidate solution
        """
        raise NotImplementedError("Calc derivative method not implemented!")

    def initialize(self) -> None:
        """
        This function fills up self.X with an initialized value
        """
        pass

    def find_h(self) -> float:
        """
        This function finds out the h to update the formula X = X + h * Xdot
        """
        raise NotImplementedError("Best h not implemented")

    def next_epoch(self) -> None:
        """
        This function handles the set of transition operations needed
        to switch from one epoch to the next
        """
        raise NotImplementedError("Next epoch not implemented!")

    def break_midway(self) -> bool:
        """
        This condition is run in the iteration function of the solver
        if we want to break in the middle of the solver, then the method
        should return true.
        """
        return False

    def preprocess(self) -> None:
        """
        Preprocessing over the data
        if one wants to do some augmentations, this would be the place to do so
        """
        self.X = 10 * self.C.eye_like()

        if self.preprocessing_cfg.MAX_CUT.IS_MAX_CUT_INSTANCE:
            self.C = self.C + (1 - self.C.min_eig()) * self.C.eye_like()
            self.X = 10 * self.C.eye_like()

        if self.preprocessing_cfg.AUGMENTATION.HAS_AUGMENTATION:
            gamma = self.preprocessing_cfg.AUGMENTATION.HYPER_PARAMETERS.GAMMA
            self.linear_conditions, self.b, self.C = _augment_problem(self.linear_conditions, self.b, self.C, gamma)
            self.n += 1
            self.X = self.C.pinv()

        if not self.preprocessing_cfg.MAX_CUT.IS_MAX_CUT_INSTANCE:
            self.X = self.C.pinv()

        self.initialize()

    def core_solve(self) -> Tuple[BaseMatrix, Optional[np.array]]:
        n_epoch = self.solver_cfg.EPOCH_COUNT
        n_iteration = self.solver_cfg.ITERATION_COUNT

        p = None
        for epoch_i in range(n_epoch):
            for iteration_i in range(n_iteration):
                Xdot, p = self.calc_p_and_xdot()
                h = self.find_h()
                self.X += h * Xdot
                if self.break_midway():
                    break
            if n_epoch > 1:
                self.next_epoch()
        return self.X, p

    def get_time_spent(self):
        if self.time_spent is None:
            raise AttributeError("core_solve has not been called yet or the solve function has been overridden!")
        return self.time_spent

    def postprocess(self, X: BaseMatrix, p: Optional[np.array]) -> Tuple[BaseMatrix, Optional[np.array]]:
        """
        Some postprocessing over the data
        for example, extracting extra information for the augmented case
        solving max-cut problems, etc.
        """
        return X, p

    def solve(self) -> Tuple[BaseMatrix, Optional[np.array]]:
        self.preprocess()
        start_time = time.time()
        X_opt, p = self.core_solve()
        self.time_spent = time.time() - start_time
        X_opt, p = self.postprocess(X_opt, p)
        return X_opt, p
