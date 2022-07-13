import numpy as np
from scipy import sparse

from physarum_sdp.matrix_utils.block_dense import BlockDenseMatrix

if __name__ == "__main__":
    # Defining a block diagonal matrix:

    # First define the blocks:
    A = np.array([[1, 2], [2, 30]])
    B = np.array([[10, 30], [30, 14]])

    # define the matrix as a list of blocks which are matrices
    m1 = BlockDenseMatrix([A, B])
    m2 = BlockDenseMatrix([np.linalg.pinv(A), np.linalg.pinv(B)])

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
    iden = BlockDenseMatrix.eye(10)

    # Calculate eigenvalues and eigenvectors
    eigenvalues, eigenvectors = m1.eigh()

    # Eigenvalues is a list of numpy arrays containing the eigenvalues for each block
    print(eigenvalues)

    # A block diagonal matrix containing the eigenvectors
    print(eigenvectors)

    # Transpose and diagonalization
    print("This is M1:\n", eigenvectors.dot(BlockDenseMatrix.diag(eigenvalues)).dot(eigenvectors.T))

    # Calculate Tr(m1m2)
    print((m1 * m2).sum())

    # Create dense
    dense_m1 = m1.toarray()

    # calculate pseudo inverse
    m1_pinv = m1.pinv()
    print(m1_pinv.dot(m1))

    # division and negation
    print(-m1 / 10)

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
