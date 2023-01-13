from yacs.config import CfgNode

from physarum_sdp.config import METHODS
from physarum_sdp.solvers.legacy.legacy_sdc_modified_with_diagonalize import physarum_hamid_modified
from physarum_sdp.solvers.legacy.legacy_sdc_vanilla import physarum_SDC_vanilla
from physarum_sdp.solvers.legacy.legacy_solvers import LegacySolver
from physarum_sdp.solvers.x_kron_x import XkronXSolver
from physarum_sdp.utils.registry import Registry
from physarum_sdp.solvers.xc import XCSolver

SOLVER_REGISTRY = Registry()


@SOLVER_REGISTRY.register(METHODS.LEGACY_SDC_VANILLA)
def build_solver1(cfg: CfgNode, linear_conditions, b, C, verbose=None):
    return LegacySolver(cfg, linear_conditions, b, C, legacy_function=physarum_SDC_vanilla, verbose=verbose)


@SOLVER_REGISTRY.register(METHODS.LEGACY_SDC_MODIFIED)
def build_solver2(cfg: CfgNode, linear_conditions, b, C, verbose=None):
    return LegacySolver(cfg, linear_conditions, b, C, legacy_function=physarum_hamid_modified, verbose=verbose)


@SOLVER_REGISTRY.register(METHODS.X_KRON_X)
def build_solver3(cfg: CfgNode, linear_conditions, b, C, verbose=None):
    return XkronXSolver(cfg, linear_conditions, b, C, verbose=verbose)

@SOLVER_REGISTRY.register(METHODS.XC)
def build_solver4(cfg: CfgNode, linear_conditions, b, C, verbose=None):
    return XCSolver(cfg, linear_conditions, b, C, verbose=verbose)