import numpy as np
from scipy import sparse
from scipy.linalg import eigh
import warnings

# "eps" the epsilon that is used in iterations for finding independent subset
# it is also used as a threshold to consider an eigenvalue to be zero
eps = 10 ** -8


def vectorize(T):
    # This functions gets a two-dimentional matrix as an input and vectorizes it
    ret = []
    for j in range(T.shape[1]):
        for i in range(T.shape[0]):
            ret.append(T[i][j])
    return np.array(ret)


def is_pos_def(A):
    return np.all(np.linalg.eigvals(A) >= -eps)


def find_best_coefficient(X, Y, left, right, iteration):
    if iteration == 0:
        return left
    mid = (left + right) / 2
    if is_pos_def(X - mid * Y):
        return find_best_coefficient(X, Y, mid, right, iteration - 1)
    else:
        return find_best_coefficient(X, Y, left, mid, iteration - 1)


def regularize(inp):
    u, v = np.linalg.eigh(inp)
    ret = False
    for x in u:
        if x < 0:
            ret = True
            break
    if not ret:
        return inp
    ret = np.zeros(inp.shape)
    for x, y in zip(u, v.T):
        if x > 10 ** -16:
            s = np.array([y])
            ret += x * (s.T.dot(s))
    return ret


class BDMatrix:
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
            self.T = BDMatrix(blocks_transpose, creator=self)

    def transpose(self):
        return self.T

    def append_block(self, block):
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
        block = self.blocks.pop()
        self.T.blocks.pop()
        self.shape[0] -= block.shape[0]
        self.shape[1] -= block.shape[1]
        self.T.shape[0] -= block.shape[0]
        self.T.shape[1] -= block.shape[1]
        self.block_count -= 1
        self.T.block_count -= 1
        return self

    def __str__(self):
        return self.toarray().__str__()

    def __add__(self, other):
        if self.block_count != other.block_count:
            raise Exception("BD matrices do not match in addition!")

        ret_blocks = []
        for i in range(self.block_count):
            ret_blocks.append(self.blocks[i] + other.blocks[i])
        return BDMatrix(ret_blocks)

    def __rmul__(self, other):
        if type(other) == float or type(other) == int:
            return self.__mul__(other)
        elif type(other) == BDMatrix:
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
            return BDMatrix(ret_blocks)
        elif type(other) != BDMatrix:
            raise Exception("Multiplication only with scalar or other BDMatrices allowed!")

        if self.block_count != other.block_count:
            warnings.warn("Multiplication blocks do not match [dense multplication replaced!]")
            return BDMatrix([self.toarray() * other.toarray()])

        ret_blocks = []
        for i in range(self.block_count):
            ret_blocks.append(self.blocks[i].multiply(other.blocks[i]))
        return BDMatrix(ret_blocks)

    def get_submatrix(self, d, length):
        curr = 0
        ret = []
        for block in self.blocks:
            prv = curr
            curr += block.shape[0]
            if prv <= d and d + length <= curr:
                return BDMatrix([block.toarray()[d - prv:d + length - prv, d - prv:d + length - prv]])
            if prv <= d < curr:
                ret.append(block.toarray()[d - prv:, d - prv:])
            elif prv < d + length <= curr:
                ret.append(block.toarray()[:d + length - prv, :d + length - prv])
            elif d <= prv and curr <= d + length:
                ret.append(block)
        return BDMatrix(ret)

    def sum(self):
        ret = 0
        for block in self.blocks:
            ret += block.sum()
        return ret

    def __copy__(self):
        ret_matrix = []
        for block in self.blocks:
            ret_matrix.append(block)
        return BDMatrix(ret_matrix)

    def __truediv__(self, other):
        ret_blocks = []
        for block in self.blocks:
            ret_blocks.append(block / other)
        return BDMatrix(ret_blocks)

    def __sub__(self, other):
        if self.block_count != other.block_count:
            raise Exception("BD matrices do not match in subtraction!")

        ret_blocks = []
        for i in range(self.block_count):
            ret_blocks.append(self.blocks[i] - other.blocks[i])
        return BDMatrix(ret_blocks)

    def dot(self, other):
        if self.block_count != other.block_count:
            raise Exception("BD matrices do not match in dot product!")
        ret_blocks = []
        for i in range(self.block_count):
            ret_blocks.append(self.blocks[i].dot(other.blocks[i]))
        return BDMatrix(ret_blocks)

    def toarray(self):
        size_of_all = sum([x.shape[0] for x in self.blocks])
        ret = np.zeros((size_of_all, size_of_all))
        curr = 0
        for block in self.blocks:
            ret[curr:curr + block.shape[0], curr:curr + block.shape[1]] = block.toarray()
            curr += block.shape[0]
        return ret

    def eigh(self):
        ret_eigenvalues = []
        ret_eigenvectors = []
        for i in range(self.block_count):
            w, U = eigh(self.blocks[i].toarray())
            ret_eigenvalues.append(w)
            ret_eigenvectors.append(U)
        return ret_eigenvalues, BDMatrix(ret_eigenvectors)

    def pinv(self):
        ret_blocks = []
        for block in self.blocks:
            ret_blocks.append(np.linalg.pinv(block.toarray()))
        return BDMatrix(ret_blocks)

    def __neg__(self):
        ret = []
        for block in self.blocks:
            ret.append(-block)
        return BDMatrix(ret)

    @staticmethod
    def diag(list_of_vectors):
        ret = []
        for vec in list_of_vectors:
            ret.append(sparse.coo_matrix(np.diag(vec)))
        return BDMatrix(ret)

    @staticmethod
    def eye(n):
        ret = []
        for vec in range(n):
            ret.append(sparse.csr_matrix([[1]]))
        return BDMatrix(ret)


if __name__ == "__main__":
    # Defining a block diagonal matrix:

    # First define the blocks:
    A = np.array([[1, 2], [2, 30]])
    B = np.array([[10, 30], [30, 14]])

    # define the matrix as a list of blocks which are matrices
    m1 = BDMatrix([A, B])
    m2 = BDMatrix([np.linalg.pinv(A), np.linalg.pinv(B)])

    # Elementwise multiplication
    mmul = m1 * m2
    print(mmul)

    # Dot product of matrices
    mmul = m1.dot(m2)
    print(mmul)

    # Scalar product and addition and subtraction
    mmul = 2 * m1 + m2 * 3 - m1
    print(mmul)

    # Define Identity matrix
    iden = BDMatrix.eye(10)

    # Calculate eigenvalues and eigenvectors
    eigenvalues, eigenvectors = m1.eigh()

    # Eigenvalues is a list of numpy arrays containing the eigenvalues for each block
    print(eigenvalues)

    # A block diagonal matrix containing the eigenvectors
    print(eigenvectors)

    # Transpose and diagonalization
    print("This is M1:\n", eigenvectors.dot(BDMatrix.diag(eigenvalues)).dot(eigenvectors.T))

    # Calculate Tr(m1m2)
    print((m1 * m2).sum())

    # Create dense
    dense_m1 = m1.toarray()

    # calculate pseudo inverse
    m1_pinv = m1.pinv()
    print(m1_pinv.dot(m1))

    # division and negation
    print(-m1/10)

    # Append and delete block
    new_block = sparse.csr_matrix(np.array([[1, 10], [0, 3]]))
    m1.append_block(new_block)
    print(m1)
    m1.pop_last_block()
    print(m1)
    print(m1.T)

    # Make copy
    m1_copy = m1.__copy__()

    # get diagonal submatrix [input parameters: ] (diagonal position, length)
    print(m1.get_submatrix(1, 2))

