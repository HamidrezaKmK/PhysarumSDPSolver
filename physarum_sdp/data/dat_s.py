import re
from enum import Enum
from typing import Tuple, List

import numpy as np
from scipy.sparse import coo_matrix

from physarum_sdp.config import PARSE_METHODS

class InputStates(Enum):
    M = 1
    N_BLOCK = 2
    BLOCK_DESC = 3
    C = 4
    MATRICES = 5


def dat_s_input(input_file_dir: str) -> Tuple[List[List[coo_matrix]], np.array, List[coo_matrix], List[int], int]:
    """
    Gets an input file directory and parses it to come up with the appropriate SDP problem

    returns (A, b, C, block_sizes, m)
    Each matrix of the dat_s format is shown by a list of coo_matrices, where each element in the list
    defines one of the matrix blocks

    A: a list of block matrices
    b: the set of condition values
    C: The cost matrix
    block_sizes: The block sizes for each of the matrices
    m: The number of total conditions
    """
    with open(input_file_dir, 'r') as input_file:
        output_changed = []

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
                # print(input_file)
                # line = re.sub(r'\+', '', line)
                tmp = list(re.sub(r'([{,}])', ' ', line).strip().split())
                block_sizes = []
                for i in range(n_block):
                    block_sizes.append(abs(int(float(tmp[i]))))

                rows = [[[] for block_no in range(n_block)] for id in range(m + 1)]
                cols = [[[] for block_no in range(n_block)] for id in range(m + 1)]
                vals = [[[] for block_no in range(n_block)] for id in range(m + 1)]
                current_state = InputStates.C
                print(block_sizes)

            elif current_state == InputStates.C:
                tmp = list(re.sub(r'([{,}])', ' ', line).strip().split())
                b = np.array(list(map(float, tmp)))
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

        for id in range(m + 1):
            block_matrices = []
            for block_no, block_sz in enumerate(block_sizes):
                block_matrices.append(coo_matrix((vals[id][block_no], (rows[id][block_no], cols[id][block_no])),
                                                 shape=(block_sz, block_sz)))
            if id == 0:
                C = block_matrices
            else:
                A.append(block_matrices)

    return A, b, C, block_sizes, m


def augment(matrix, num):
    s = np.append(matrix, [[0] * matrix.shape[1]], axis=0)
    s = np.append(s, np.array([[0] * matrix.shape[0] + [num]]).T, axis=1)
    return s


def augment_problem(C, m, n, A, b, gamma):
    C_bar = augment(C * gamma, 1)
    n_bar = n + 1
    A_bar = []
    C_pinv = np.linalg.pinv(C)
    for i in range(m):
        A_bar.append(augment(A[i], b[i] - np.sum(A[i] * C_pinv) / gamma))
    return C_bar, m, n_bar, A_bar, b
