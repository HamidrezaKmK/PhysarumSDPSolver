# TODO: This implementation is buggy and incomplete!

from __future__ import annotations
from abc import ABC, abstractmethod
from ctypes import Union
from typing import Tuple, List

import numpy as np
from debugpy._vendored.pydevd._pydev_bundle.pydev_override import overrides
from scipy import sparse
from scipy.linalg import eigh
import warnings

# "eps" the epsilon that is used in iterations for finding independent subset
# it is also used as a threshold to consider an eigenvalue to be zero
from physarum_sdp.matrix_utils.base_matrix import BaseMatrix

eps = 10 ** -8

_SCALAR_TYPES = [float, int]


class BlockDenseMatrix(BaseMatrix):
    """
    A Wrapper class to optimize operations on block diagonal matrices

    Construct:
    -   BDMatrix(list of square matrices in numpy or scipy standard)
    """

    def __init__(self, diagonal_blocks, creator=None):

        self.block_count = len(diagonal_blocks)
        self.blocks = diagonal_blocks
        for i in range(len(self.blocks)):
            self.blocks[i] = sparse.csr_matrix(self.blocks[i])

        t0 = sum([block.shape[0] for block in self.blocks])
        t1 = sum([block.shape[1] for block in self.blocks])
        self.shape = [t0, t1]

        if creator is not None:
            self.T = creator
        else:
            blocks_transpose = []
            for i in range(len(self.blocks)):
                blocks_transpose.append(self.blocks[i].T)
            self.T = BlockDenseMatrix(blocks_transpose, creator=self)

    def transpose(self):
        """
        Return the transpose of the matrix
        """
        return self.T

    def append_block(self, block):
        """
        Add a new block to the end of matrix and return the matrix
        """
        self.blocks.append(sparse.csr_matrix(block))
        self.T.blocks.append(block.T)
        self.shape[0] += block.shape[0]
        self.shape[1] += block.shape[1]
        self.T.shape[0] += block.shape[0]
        self.T.shape[1] += block.shape[1]
        self.block_count += 1
        self.T.block_count += 1
        return self

    def pop_last_block(self):
        """
        Pop the last block and return the block
        """
        block = self.blocks.pop()
        self.T.blocks.pop()
        self.shape[0] -= block.shape[0]
        self.shape[1] -= block.shape[1]
        self.T.shape[0] -= block.shape[0]
        self.T.shape[1] -= block.shape[1]
        self.block_count -= 1
        self.T.block_count -= 1
        return block

    def __str__(self):
        return self.toarray().__str__()

    def __add__(self, other):
        """
        Add a block diagonal matrix to the one currently
        """
        if self.block_count != other.block_count:
            raise Exception("BD matrices do not match in addition!")

        ret_blocks = []
        for i in range(self.block_count):
            ret_blocks.append(self.blocks[i] + other.blocks[i])
        return BlockDenseMatrix(ret_blocks)

    def __rmul__(self, other):
        if type(other) == float or type(other) == int:
            return self.__mul__(other)
        elif type(other) == BlockDenseMatrix:
            other.__mul__(self)
        else:
            raise Exception("RMUL incorrect!")

    def __mul__(self, other):
        """
        Elementwise multiplication of matrix with other,
        It can also work with scalar products
        """
        if type(other) == float or type(other) == int:
            ret_blocks = []
            for i in range(self.block_count):
                ret_blocks.append(other * self.blocks[i])
            return BlockDenseMatrix(ret_blocks)
        elif type(other) != BlockDenseMatrix:
            raise Exception("Multiplication only with scalar or other BDMatrices allowed!")

        if self.block_count != other.block_count:
            warnings.warn("Multiplication blocks do not match [dense multplication replaced!]")
            return BlockDenseMatrix([self.toarray() * other.toarray()])

        ret_blocks = []
        for i in range(self.block_count):
            ret_blocks.append(self.blocks[i].multiply(other.blocks[i]))
        return BlockDenseMatrix(ret_blocks)

    def get_submatrix(self, d, length):
        """
        Get the submatrix from (d,d) to (d + length - 1, d + length - 1)
        """
        curr = 0
        ret = []
        for block in self.blocks:
            prv = curr
            curr += block.shape[0]
            if prv <= d and d + length <= curr:
                return BlockDenseMatrix([block.toarray()[d - prv:d + length - prv, d - prv:d + length - prv]])
            if prv <= d < curr:
                ret.append(block.toarray()[d - prv:, d - prv:])
            elif prv < d + length <= curr:
                ret.append(block.toarray()[:d + length - prv, :d + length - prv])
            elif d <= prv and curr <= d + length:
                ret.append(block)
        return BlockDenseMatrix(ret)

    def sum(self):
        """
        Return the sum of elements in matrix
        """
        ret = 0
        for block in self.blocks:
            ret += block.sum()
        return ret

    def __copy__(self):
        ret_matrix = []
        for block in self.blocks:
            ret_matrix.append(block)
        return BlockDenseMatrix(ret_matrix)

    def __truediv__(self, other):
        ret_blocks = []
        for block in self.blocks:
            ret_blocks.append(block / other)
        return BlockDenseMatrix(ret_blocks)

    def __sub__(self, other):
        if self.block_count != other.block_count:
            raise Exception("BD matrices do not match in subtraction!")

        ret_blocks = []
        for i in range(self.block_count):
            ret_blocks.append(self.blocks[i] - other.blocks[i])
        return BlockDenseMatrix(ret_blocks)

    def dot(self, other):
        """
        The matrix product of current matrix with another matrix
        """
        if self.block_count != other.block_count:
            raise Exception("BD matrices do not match in dot product!")
        ret_blocks = []
        for i in range(self.block_count):
            ret_blocks.append(self.blocks[i].dot(other.blocks[i]))
        return BlockDenseMatrix(ret_blocks)

    def toarray(self):
        """
        Return dense numpy array type of the matrix
        """
        size_of_all = sum([x.shape[0] for x in self.blocks])
        ret = np.zeros((size_of_all, size_of_all))
        curr = 0
        for block in self.blocks:
            ret[curr:curr + block.shape[0], curr:curr + block.shape[1]] = block.toarray()
            curr += block.shape[0]
        return ret

    def eigh(self):
        """
        Return two lists
        First contains a list of numpy arrays of each block
        Second is a BDMatrix whose columns are the eigenvectors of the current matrix
        """
        ret_eigenvalues = []
        ret_eigenvectors = []
        for i in range(self.block_count):
            w, U = eigh(self.blocks[i].toarray())
            ret_eigenvalues.append(w)
            ret_eigenvectors.append(U)
        return ret_eigenvalues, BlockDenseMatrix(ret_eigenvectors)

    def pinv(self):
        """
        Return the pseudo inverse of the current matrix
        """
        ret_blocks = []
        for block in self.blocks:
            ret_blocks.append(np.linalg.pinv(block.toarray()))
        return BlockDenseMatrix(ret_blocks)

    def __neg__(self):
        ret = []
        for block in self.blocks:
            ret.append(-block)
        return BlockDenseMatrix(ret)

    @staticmethod
    def diag(list_of_vectors):
        """
        A list of numpy arrays as input and a diagonal matrix as an output
        """
        ret = []
        for vec in list_of_vectors:
            ret.append(sparse.coo_matrix(np.diag(vec)))
        return BlockDenseMatrix(ret)

    @staticmethod
    def eye(n):
        ret = []
        for vec in range(n):
            ret.append(sparse.csr_matrix([[1]]))
        return BlockDenseMatrix(ret)
