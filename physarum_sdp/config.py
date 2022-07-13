import copy
from enum import Enum
from yacs.config import CfgNode


class StringEnum(Enum):
    def __str__(self):
        return str(self.value)

class PARSE_METHODS(StringEnum):
    DAT_S = 'dat-s'
    SIMPLE = 'simple (.txt)'


class METHODS(StringEnum):
    X_KRON_X = "R=inv(X)-kron-inv(X)"
    LEGACY_SDC_MODIFIED = 'Legacy-SDC-modified'
    LEGACY_SDC_VANILLA = 'Legacy-SDC-vanilla'


class MATRIX_TYPES(StringEnum):
    DENSE = "dense (simple)"
    BLOCK_DENSE = "blocked-dense"
    SPARSE = "sparse"
    BLOCK_SPARSE = "block-sparse"


class PREPROCESSING_METHODS(StringEnum):
    STANDARD = 'standard'


__C = CfgNode()

__C.DATA = CfgNode()
__C.DATA.PARSE_METHOD = PARSE_METHODS.DAT_S.__str__()
__C.DATA.MATRIX_TYPE = MATRIX_TYPES.DENSE.__str__()


__C.SOLVER = CfgNode()
__C.SOLVER.METHOD = METHODS.X_KRON_X.__str__()
__C.SOLVER.PREPROCESSING = CfgNode()
__C.SOLVER.PREPROCESSING.METHOD = PREPROCESSING_METHODS.STANDARD.__str__()
__C.SOLVER.PREPROCESSING.AUGMENTATION = CfgNode()
__C.SOLVER.PREPROCESSING.AUGMENTATION.HAS_AUGMENTATION = False
__C.SOLVER.PREPROCESSING.AUGMENTATION.HYPER_PARAMETERS = CfgNode()
__C.SOLVER.PREPROCESSING.AUGMENTATION.HYPER_PARAMETERS.GAMMA = 0.001
__C.SOLVER.PREPROCESSING.MAX_CUT = CfgNode()
__C.SOLVER.PREPROCESSING.MAX_CUT.IS_MAX_CUT_INSTANCE = False
__C.SOLVER.HYPER_PARAMETERS = CfgNode()
__C.SOLVER.HYPER_PARAMETERS.ITERATION_COUNT = 1000  # The number of iterations per epoch
__C.SOLVER.HYPER_PARAMETERS.EPOCH_COUNT = 1000
__C.SOLVER.HYPER_PARAMETERS.RESTART_FACTOR = 0
__C.SOLVER.HYPER_PARAMETERS.H = 0.01


def get_default_cfg():
    """
    Returns the default configurations that will run
    """
    return copy.deepcopy(__C)
