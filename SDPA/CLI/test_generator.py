import sys

import numpy as np
from random_test_gen import get_random_test
from vertex_cover_test_gen import get_vertex_cover_test
import os
from termcolor import colored

read_me = '''
# Enter an option (1 or 2) to generate tests
# [1] Vertex cover generators:
    1) Input number of tests
    2) Range of 'n', the number of vertices, separated by space  
    3) Range of 'm', the number of edges, seperated by space
    e.g. 
        10
        8 10
        10 12
    This creates 10 tests which have between 8 to 10 number of vertices and 10 to 12 number of edges
    
# [2] Random matrix generators:
    1) Input number of tests
    2) Range of 'n', the size of square matrices
    3) Range of 'm', the number of constraints in the SDP problem
    4) A number (among 1, 2, 3) to choose "C" matrix
        [1] positive definite C
        [2] negative definite C
        [3] general form C
    e.g.
        10
        8 10
        4 5
        1
'''


def generate_tests(test_set_directory: str, folder: str, prefix_test_name: str, description: str):
    print(read_me)

    opt = int(input())
    tests = int(input())

    ln, rn = [int(x) for x in input().split(' ')]
    lm, rm = [int(x) for x in input().split(' ')]

    test_opt = 0

    if opt == 2:
        test_opt = int(input())


    try:
        sv_dir = os.getcwd()
        print(test_set_directory)
        print(sv_dir)
        os.chdir(test_set_directory)
        print("gone there!")
        os.mkdir(folder)
        print("made dir")
        os.chdir(sv_dir)
    except OSError:
        print(colored("Creation of the test directory %s failed" % folder, 'red'))
    else:
        print(colored("Test folder successfully created", 'green'))

    path = os.path.join(test_set_directory, folder)

    original_stdout = sys.stdout

    for i in range(tests):
        n = np.random.randint(low=ln, high=rn + 1)
        m = np.random.randint(low=lm, high=rm + 1)
        filename = os.path.join(path, prefix_test_name + str(i) + '.dat-s')
        try:
            with open(filename, 'w') as f:
                sys.stdout = f
                if opt == 1:
                    get_vertex_cover_test(n, m, description)
                else:
                    get_random_test(n, m, test_opt, description)
                sys.stdout = original_stdout
                print(colored("Test number " + str(i) + " generated successfully", 'green'))
        except:
            print(colored("Error happened in generating test number " + str(i), 'red'))
        finally:
            f.close()

    return
