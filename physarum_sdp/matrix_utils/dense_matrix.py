from __future__ import annotations

from typing import Union, Tuple, List

from scipy.sparse import coo_matrix

from physarum_sdp.config import PARSE_METHODS
from physarum_sdp.matrix_utils.base_registry import PROBLEM_BUILDER_REGISTRY

import numpy as np
from debugpy._vendored.pydevd._pydev_bundle.pydev_override import overrides

from physarum_sdp.matrix_utils.base_matrix import BaseMatrix


class DenseMatrix(BaseMatrix):
    def __init__(self, base_array: np.array):
        self.content = base_array

    @property
    def shape(self) -> Tuple[int, int]:
        return self.content.shape

    def __getitem__(self, item: Tuple[int, int]) -> float:
        return self.content[item]

    def __setitem__(self, item: Tuple[int, int], value: float):
        self.content[item] = value

    def add_block(self, x: Union[BaseMatrix, int, float]) -> DenseMatrix:
        s = np.append(self.content, [[0] * self.shape[1]], axis=0)
        s = np.append(s, np.array([[0] * self.shape[0] + [x]]).T, axis=1)
        return DenseMatrix(s)

    def transpose(self) -> DenseMatrix:
        return DenseMatrix(base_array=self.content.T)

    def trace(self) -> float:
        return self.content.trace()

    def __add__(self, other: Union[int, float, DenseMatrix]) -> DenseMatrix:
        """
        Add a block diagonal matrix to the one currently
        """
        return DenseMatrix(self.content + other.content)

    def __mul__(self, other: Union[int, float, DenseMatrix]) -> DenseMatrix:
        """
        Elementwise multiplication of matrix with other,
        It can also work with scalar products
        """
        if type(other) in [int, float]:
            return DenseMatrix(self.content * other)
        return DenseMatrix(self.content * other.content)

    def __matmul__(self, other: DenseMatrix) -> DenseMatrix:
        return DenseMatrix(self.content @ other.content)

    def vectorize(self) -> DenseMatrix:
        return DenseMatrix(self.content.flatten('F').reshape(self.shape[0] * self.shape[1], 1))

    def pinv(self) -> BaseMatrix:
        return DenseMatrix(np.linalg.pinv(self.content))

    def eigh(self) -> Tuple[Union[np.array, List[float]], BaseMatrix]:
        return np.linalg.eigh(self.content)

    def submat(self, i: int, j: int, sz: int) -> DenseMatrix:
        return DenseMatrix(self.content[i:i + sz, j:j + sz])

    def sum(self) -> float:
        return self.content.sum()

    def __truediv__(self, other: Union[int, float]) -> DenseMatrix:
        return DenseMatrix(self.content / other)

    @classmethod
    def diag(cls, diagonal_elements: np.array) -> DenseMatrix:
        if len(diagonal_elements.shape) != 1:
            raise Exception(f"The input shape {diagonal_elements} is invalid! It should be a vector!")
        return DenseMatrix(np.diag(diagonal_elements).astype(np.float32))

    @classmethod
    def eye(cls, n):
        return DenseMatrix(np.eye(n).astype(np.float32))

    def __str__(self) -> str:
        return self.content.__str__()


def convert_block_sparse_to_dense(block_sizes, A):
    ret = np.zeros((sum(block_sizes), sum(block_sizes)))
    sum_until_now = 0
    for id, blocks in enumerate(A):
        dense_block = blocks.toarray()
        dense_block += dense_block.T
        for i in range(dense_block.shape[0]):
            dense_block[i][i] /= 2
        ret[sum_until_now:sum_until_now + block_sizes[id], sum_until_now:sum_until_now + block_sizes[id]] = dense_block
        sum_until_now += block_sizes[id]
    return DenseMatrix(ret)


@PROBLEM_BUILDER_REGISTRY.register(PARSE_METHODS.DAT_S.__str__())
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
