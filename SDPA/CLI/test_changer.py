import os
from enum import Enum
import re
import numpy as np
from scipy.sparse import coo_matrix

from scipy.sparse.linalg import spsolve
import colored
from colored import stylize, fg, bg, attr

def augment(parent_dir, list_of_dirs, gamma):
    for testname in list_of_dirs:
        output_changed = []

        class InputStates(Enum):
            M = 1
            N_BLOCK = 2
            BLOCK_DESC = 3
            C = 4
            MATRICES = 5

        with open(os.path.join(parent_dir, testname)) as input_file:
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
                    output_changed.append(line)
                    continue

                if current_state == InputStates.M:
                    elems = line.strip().split()
                    m = int(elems[0])
                    output_changed.append(str(m))
                    current_state = InputStates.N_BLOCK

                elif current_state == InputStates.N_BLOCK:
                    elems = line.strip().split()
                    n_block = int(elems[0])
                    output_changed.append(str(n_block + 1))
                    current_state = InputStates.BLOCK_DESC

                elif current_state == InputStates.BLOCK_DESC:
                    tmp = list(re.sub(r'([{,}])', ' ', line).strip().split())
                    block_sizes = []
                    for i in range(n_block):
                        block_sizes.append(int(tmp[i]))

                    output_changed.append("{" + ",".join(list(map(str, block_sizes))) + ",1}")

                    rows = [[[] for block_no in range(n_block)] for id in range(m + 1)]
                    cols = [[[] for block_no in range(n_block)] for id in range(m + 1)]
                    vals = [[[] for block_no in range(n_block)] for id in range(m + 1)]
                    current_state = InputStates.C

                elif current_state == InputStates.C:
                    b = np.array(list(map(float, line.strip().split())))
                    output_changed.append(" ".join(list(map(str, b))))
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

            for i in range(len(A)):
                alpha_i = 0
                for block_no, block in enumerate(C):
                    tmp = spsolve(C[block_no].tocsc(), A[i][block_no].tocsc())
                    if tmp.shape[0] == 1:
                        alpha_i -= tmp[0] / gamma
                    else:
                        alpha_i -= np.array(tmp.diagonal()).sum() / gamma
                    #alpha_i -= np.array(.diagonal()).sum() / gamma
                alpha_i += b[i]
                A[i].append(coo_matrix(([alpha_i], ([0], [0])), shape=(1,1)))
            for block_no in range(len(C)):
                C[block_no] *= gamma
            C.append(coo_matrix(([1], ([0], [0])), shape=(1,1)))

            """
            print("sanity check:")
            for i in range(len(A)):
                sm = 0
                for block_no, block in enumerate(C):
                    tmp = spsolve(C[block_no].tocsc(), A[i][block_no].tocsc())
                    if tmp.shape[0] == 1:
                        sm += tmp[0]
                    else:
                        sm += np.array(tmp.diagonal()).sum()
                print(sm, "==", b[i])
            """

            for i, block in enumerate(C):
                csc_block = block.tocsc()
                rows, cols = block.nonzero()
                for r, c in zip(rows, cols):
                    output_changed.append("0 {} {} {} {}".format(i + 1, r + 1, c + 1, csc_block[r, c]))
            for mat_no, A_i in enumerate(A):
                for i, block in enumerate(A_i):
                    csc_block = block.tocsc()
                    rows, cols = block.nonzero()
                    for r, c in zip(rows, cols):
                        output_changed.append("{} {} {} {} {}".format(mat_no + 1, i + 1, r + 1, c + 1, csc_block[r, c]))
            output_changed.append("\"This problem is augmented with gamma = {}\"".format(gamma))


        new_name = ""
        cnt = 0
        while True:
            new_name = os.path.splitext(testname)[0] + "-augmented" + str(cnt) + ".dat-s"
            if os.path.exists(os.path.join(parent_dir, new_name)):
                cnt += 1
            else:
                break
        with open(os.path.join(parent_dir, new_name), "w") as output_file:
            for x in output_changed:
                output_file.write(x + "\n")
        print(stylize(new_name + " file created!", colored.fg('green')))
