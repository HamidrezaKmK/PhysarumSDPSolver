"""
This code iterates over all the tests in 'tests' directory
- All the tests should be in format .dat-s
- All the tests should have a .dat-s.res file next to them which contains their true output
- All the tests should have a .dat-s.physarum_out file next to them which contains the Physarum output

The Physarum results are compared with the ground truth and a summary will then be available in "result.txt"

"""

import os
import os.path
from pathlib import Path
import re
import numpy as np
from decimal import Decimal

def extract_result(dir_name):
    with open(dir_name, 'r') as input_file:
        lines = input_file.readlines()
        for line in lines:
            stripped = line.strip()
            if len(stripped) > len('objValPrimal') and stripped[:len('objValPrimal')] == 'objValPrimal':
                value = -float(stripped.split()[-1])
                return value

    raise Exception("No ground truth found")

def compare_results(ground_truth, physarum_output_dir, output_file):
    error = 0
    iter_count = 0
    with open(physarum_output_dir, 'r') as input_file:
        lines = input_file.readlines()
        for line in lines:
            parts = line.strip().split()
            if parts[0] == 'Tr(CX)':
                calculated = float(parts[-1])
                output_file.write("-Ground truth: {}\n-Physarum solver output: {}\n-Error: {}\n".format(ground_truth, calculated, abs(ground_truth - calculated)))
                error = abs(ground_truth - calculated)
            if parts[0] == 'Primal' and parts[1] == 'and' and parts[2] == 'dual':
                output_file.write("-Gap: {}\n".format(parts[-1]))
            if parts[0] == 'Number':
                output_file.write("-Number of iterations: {}\n".format(parts[-1]))
                iter_count = int(parts[-1])
    return error, iter_count

# The directory in which all the tests are at:
tests_directory = 'tests'
with open('results.txt', 'w') as output_file:
    list_of_dirs = [str(x.name) for x in Path(tests_directory).iterdir() if x.is_dir()]
    cnt = 0
    for dir in list_of_dirs:
        output_file.write("--- {} ---\n".format(dir))
        errors = []
        iteration_counts = []
        relative_errors = []
        for path in Path(os.path.join(tests_directory, dir)).rglob('*'):
            if len(str(path)) > 6 and str(path)[-6:] == '.dat-s':
                name = str(path)
                ground_truth = extract_result(name + '.res')
                output_file.write("\n> [Test] {}\n".format(name))
                error, iter_count = compare_results(ground_truth, name + '.physarum_out', output_file)
                errors.append(error)
                relative_errors.append(abs(error / ground_truth))
                iteration_counts.append(iter_count)
        errors = np.array(errors, dtype=Decimal)
        relative_errors = np.array(relative_errors, dtype=Decimal)
        iteration_counts = np.array(iteration_counts, dtype=float)
        output_file.write("\n>Mean optimality gap: {}\n".format(np.mean(errors)))
        output_file.write(">Maximum optimality gap: {}\n".format(np.max(errors)))
        output_file.write(">Mean iteration counts: {}\n".format(np.mean(iteration_counts)))
        output_file.write("============\n\n")
        cnt += 1
