from math import inf
import numpy as np
import scipy.linalg as splinalg
from tqdm import tqdm
import math
import os
from enum import Enum
import re
from scipy.sparse import coo_matrix
from pathlib import Path
from physarum_solver import physarum_C_iden_modified, physarum_C_iden_vanilla, physarum_SDC_vanilla
from mat_utils import vectorize, BDMatrix

physarum_solver_methods = [
    physarum_SDC_vanilla,
    physarum_C_iden_vanilla,
    physarum_C_iden_modified
]


def augment(matrix, num):
    return matrix.__copy__().append_block(np.array([[num]]))


def augment_problem(C, m, n, A, b, gamma):
    C_bar = augment(C * gamma, 1)
    n_bar = n + 1
    A_bar = []
    C_pinv = C.pinv()
    for i in range(m):
        A_bar.append(augment(A[i], b[i] - (A[i] * C_pinv).sum() / gamma))
        # print("Doing the augmentation")
        # print((A_bar[i] * C_bar.pinv()).sum(), "---", b[i])
    return C_bar, m, n_bar, A_bar, b


def solve_SDP_pos_definite_C(C, X0, m, n, A, b, iter_count, method_number, output_summary=False, out_file=None):
    """
    This code solves the SDP for a positive definite cost matrix C

    :param C:
    The cost matrix
    :param m:
    The number of linear constraints
    :param n:
    The size of the matrices
    :param As:
    A list of matrices where As[i] is the ith linear constraint of the form tr(As[i] X) = b[i]

    :param b:
    A vector showing linear constraints

    :param iter_count:
    maximum number of iterations for the physarum solver

    :param dominating_factor:
    The dominating factor of the starting point

    :param output_summary:
    If it is true then an output summary will be printed in out_file

    :param out_file:
    A file in which the output is written

    :return:
    """
    X_opt, y, gap, count, max_error = physarum_solver_methods[method_number](C, X0, m, n, A, b, iter_count,
                                                                             output_summary, out_file)
    return X_opt, y, gap, count, max_error


def simple_input():
    """
    Gets input in the simple format

    :return:
    Returns the following
    A : a list of linear constraint n*n matrices
    b : a vector where Tr(A_i X) = b_i
    C : the cost matrix
    n : the size of each of the matrices
    m : the number of constraints
    """
    b = []
    A = []

    shape = int(input("Enter the dimension of matrices: "))
    m = int(input("Enter the number of linear conditions: "))
    print("Enter A_i s as a dense matrix in the following:")
    for i in range(m):
        print("Enter A_{}:".format(i + 1))
        A.append([])
        for j in range(shape):
            inp = list(map(float, input().split()))
            A[-1].append(inp)
        A[-1] = np.array(A[-1])
        A[-1] = (A[-1].T + A[-1]) / 2

    b = [list(map(float, input("Enter a list containint b_i elements with space between them:\n").split()))]
    b = np.array(b).transpose()

    C = []
    print("Enter a positive definite C:")
    for i in range(shape):
        inp = list(map(float, input().split()))
        C.append(inp)
    C = np.array(C)

    return A, b, C, shape, m


def dat_s_input(input_file):
    output_changed = []

    class InputStates(Enum):
        M = 1
        N_BLOCK = 2
        BLOCK_DESC = 3
        C = 4
        MATRICES = 5

    m = 0
    n_block = 0
    rows = cols = vals = None
    block_sizes = []
    lines = input_file.readlines()
    current_state = InputStates.M
    C = None
    A = []
    b = None

    for line in lines:
        if len(line.strip()) == 0:
            continue
        if line[0] == "\"" or line[0] == "*":
            continue

        if current_state == InputStates.M:
            elems = line.strip().split()
            m = int(elems[0])
            output_changed.append(str(m))
            current_state = InputStates.N_BLOCK

        elif current_state == InputStates.N_BLOCK:
            elems = line.strip().split()
            n_block = int(elems[0])
            current_state = InputStates.BLOCK_DESC

        elif current_state == InputStates.BLOCK_DESC:
            tmp = list(re.sub(r'([{,}])', ' ', line).strip().split())
            block_sizes = []
            for i in range(n_block):
                block_sizes.append(abs(int(tmp[i])))

            rows = [[[] for block_no in range(n_block)] for id in range(m + 1)]
            cols = [[[] for block_no in range(n_block)] for id in range(m + 1)]
            vals = [[[] for block_no in range(n_block)] for id in range(m + 1)]
            current_state = InputStates.C

        elif current_state == InputStates.C:
            b = np.array(list(map(float, line.strip().split())))
            current_state = InputStates.MATRICES

        elif current_state == InputStates.MATRICES:
            elems = line.strip().split()
            id = int(elems[0])
            block_no = int(elems[1]) - 1
            r = int(elems[2]) - 1
            c = int(elems[3]) - 1
            val = float(elems[4])
            rows[id][block_no].append(r)
            cols[id][block_no].append(c)
            vals[id][block_no].append(val)
            if r != c:
                rows[id][block_no].append(c)
                cols[id][block_no].append(r)
                vals[id][block_no].append(val)

    for id in range(m + 1):
        block_matrices = []
        for block_no, block_sz in enumerate(block_sizes):
            block_matrices.append(coo_matrix((vals[id][block_no], (rows[id][block_no], cols[id][block_no])),
                                             shape=(block_sz, block_sz)))
        if id == 0:
            C = BDMatrix(block_matrices)
            #C = (C + C.T) / 2
        else:
            A.append(BDMatrix(block_matrices))
            #A[-1] = (A[-1] + A[-1].T) / 2

    return A, b, C, m


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
    return ret


def solve_test_list(test_names_list, max_iter, method_number, gamma=None):
    """
    This function solves a list of .dat-s files
    It then creates .physarum_out outputs next to each test
    containing the answer that the physarum sovler has achieved

    :param test_names_list:
    A list of test names formatted as .dat-s

    :param max_iter:
    The maximum iteration number the solver will spend before exiting

    :return:
    """

    test_count = 1
    for test_name in test_names_list:
        print("******************************************")
        print("************ Test No.{}*******************".format(test_count))
        print("******************************************")
        test_count += 1

        A = []
        with open(os.path.join('.', test_name)) as input_file:
            A, b, C, m = dat_s_input(input_file)
            C = -C
            n = C.shape[0]

        for i in range(len(A)):
            print("mat no. {}\n{}".format(i, A[i]))
        print("This is C:")
        print(C)
        print("m = {}, n = {}".format(m, n))
        # max_iter = int(input("Enter maximum iteration count: "))
        with open(os.path.join('.', test_name + ".physarum_out"), 'w') as output_file:
            output_file.write("Answer of test {}\n".format(test_name))

            if gamma is not None:
                C, m, n, A, b = augment_problem(C, m, n, A, b, gamma)
                X0 = C.pinv()
            else:
                X0 = 100 * BDMatrix.eye(n)

            X_opt, y, gap, count, max_error = solve_SDP_pos_definite_C(C, X0, m, n, A, b, max_iter,
                                                                       method_number=method_number, output_summary=True,
                                                                       out_file=output_file)

            if gamma is not None:
                output_file.write("This is beta: {}\n".format(X_opt.get_submatrix(n-1, 1)))
                X_opt = X_opt.get_submatrix(0, n-1)
                C = C.get_submatrix(0, n-1)
                C = C / gamma
                output_file.write(
                    "Primal solution:\n{}\nDual solution:\n{}\nTr(CX) = {}\n".format(X_opt, y, (C * X_opt).sum()))
                output_file.write("Primal and dual gap: {}\n".format(gap))
                output_file.write("Number of iterations: {}\n".format(count - 1))
                output_file.write("Max error in symmetry of Q: {}".format(max_error))
            else:
                output_file.write(
                    "Primal solution:\n{}\nDual solution:\n{}\nTr(CX) = {}\n".format(X_opt, y, (C * X_opt).sum()))
                output_file.write("Primal and dual gap: {}\n".format(gap))
                output_file.write("Number of iterations: {}\n".format(count - 1))
                output_file.write("Max error in symmetry of Q: {}".format(max_error))


def main():
    test_list = ['tests/testset0/sample_0.dat-s']
    solve_test_list(test_list, gamma=1 / 100, max_iter=3000, method_number=0)


if __name__ == "__main__":
    main()
