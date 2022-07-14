from __future__ import annotations

from abc import ABC, abstractmethod
from typing import Tuple, Union, List

_SCALAR_TYPES = [int, float]

class BaseMatrix(ABC):

    @abstractmethod
    def __getitem__(self, item: Tuple[int, int]) -> float:
        raise NotImplementedError(f"get item not implemented for item at {self}")

    @abstractmethod
    def __setitem__(self, item: Tuple[int, int], value: float):
        raise NotImplementedError("set item not implemented!")

    @property
    @abstractmethod
    def shape(self) -> Tuple[int, int]:
        raise NotImplementedError("Shape not implemented!")

    @abstractmethod
    def transpose(self) -> BaseMatrix:
        raise NotImplementedError("Transpose not implemented!")

    @abstractmethod
    def __add__(self, other: Union[BaseMatrix, int, float]) -> BaseMatrix:
        raise NotImplementedError("Addition is not implemented!")

    @abstractmethod
    def __mul__(self, other: Union[BaseMatrix, int, float]) -> BaseMatrix:
        raise NotImplementedError("Multiplication not implemented!")

    @abstractmethod
    def __matmul__(self, other: BaseMatrix) -> BaseMatrix:
        raise NotImplementedError("Matrix multiplication not implemented!")

    @abstractmethod
    def __truediv__(self, other: Union[int, float]) -> BaseMatrix:
        raise NotImplementedError("Division not implemented!")

    @abstractmethod
    def submat(self, i: int, j: int, sz: int) -> BaseMatrix:
        """
        Get submatrix starting from (i,j) and ending in (i + sz - 1, j + sz - 1)
        """
        raise NotImplementedError("Submatrix is not implemented!")

    @abstractmethod
    def sum(self) -> float:
        """
        Get the sum of all elements in the matrix
        """
        raise NotImplementedError("Summation on subamtrix not defined!")

    @abstractmethod
    def pinv(self) -> BaseMatrix:
        """
        Calculate the pseudoinverse of the matrix
        """
        raise NotImplementedError("Pseudo inverse not implemented!")

    @abstractmethod
    def eigh(self) -> Tuple[List[float], BaseMatrix]:
        """
        Returns a list of eigenvalues and a matrix that contains the corresponding eigenvectors as columns
        """
        raise NotImplementedError("Eigenvalue computation not implemented!")

    @abstractmethod
    def trace(self) -> float:
        """
        Calculate the sum of all diagonal elements
        """
        raise NotImplementedError("Trace not implemented!")

    @abstractmethod
    def add_block(self, x: Union[BaseMatrix, int, float]) -> BaseMatrix:
        """
        Return a matrix that adds a block to the lower right corner
        """
        raise NotImplementedError("adding block not implemented!")

    @abstractmethod
    def vectorize(self) -> BaseMatrix:
        raise NotImplementedError("Vectorization not implemented")

    @classmethod
    @abstractmethod
    def eye(cls, n: int) -> BaseMatrix:
        raise NotImplementedError(f"Eye method not imlemented for {cls}")

    @classmethod
    @abstractmethod
    def zeros(cls, n: int, m: int) -> BaseMatrix:
        raise NotImplementedError(f"Eye method not imlemented for {cls}")

    @classmethod
    @abstractmethod
    def diag(cls, diagonal_elements: Union[BaseMatrix, List[BaseMatrix], List[float]]) -> BaseMatrix:
        raise NotImplementedError(f"Diag method not implemented for {cls}")

    @property
    def T(self) -> BaseMatrix:
        return self.transpose()

    def eye_like(self) -> BaseMatrix:
        if self.shape[0] != self.shape[1]:
            raise AttributeError(f"The matrix should be a square one but it is {self.shape}")
        return type(self).eye(self.shape[0])

    def zeros_like(self) -> BaseMatrix:
        return type(self).zeros(self.shape[0], self.shape[1])

    def __rmul__(self, other: Union[BaseMatrix, int, float]) -> BaseMatrix:
        if type(other) in _SCALAR_TYPES:
            return self.__mul__(other)
        return other.__mul__(self)

    def __radd__(self, other: Union[BaseMatrix, int, float]) -> BaseMatrix:
        if type(other) in _SCALAR_TYPES:
            return self.__add__(other)
        return other.__add__(self)

    def __sub__(self, other: Union[BaseMatrix, int, float]) -> BaseMatrix:
        return self.__add__(other.__mul__(-1))

    def __rsub__(self, other: Union[BaseMatrix, int, float]) -> BaseMatrix:
        return other.__add__(self.__mul__(-1))

    def dot(self, other: BaseMatrix) -> BaseMatrix:
        return self.__matmul__(other)

    def __rmatmul__(self, other: BaseMatrix) -> BaseMatrix:
        return other.__matmul__(self)

    def __neg__(self):
        return self.__mul__(-1)

    def min_eig(self):
        eigen, _ = self.eigh()
        return min(eigen)

    def max_eig(self):
        eigen, _ = self.eigh()
        return max(eigen)

    def min_max_eig(self):
        eigen, _ = self.eigh()
        return min(eigen), max(eigen)
