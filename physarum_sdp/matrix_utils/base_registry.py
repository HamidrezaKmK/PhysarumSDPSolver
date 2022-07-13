from typing import Tuple, List

import numpy as np
from scipy.sparse import coo_matrix

from physarum_sdp.config import PARSE_METHODS
from physarum_sdp.matrix_utils.base_matrix import BaseMatrix
from physarum_sdp.matrix_utils.dense_matrix import convert_block_sparse_to_dense
from physarum_sdp.utils.registry import Registry

PROBLEM_BUILDER_REGISTRY = Registry()


@PROBLEM_BUILDER_REGISTRY.register(PARSE_METHODS.DAT_S)
def from_dat_s_to_dense_matrices(parsed_input: Tuple[List[List[coo_matrix]],
                                                     np.array,
                                                     List[coo_matrix],
                                                     List[int],
                                                     int]) -> Tuple[List[BaseMatrix], np.array, BaseMatrix]:
    linear_conditions, b, C, block_sizes, m = parsed_input
    A = []
    for i, As in enumerate(linear_conditions):
        A.append(convert_block_sparse_to_dense(block_sizes, As))
    C = -convert_block_sparse_to_dense(block_sizes, C)
    return A, b, C