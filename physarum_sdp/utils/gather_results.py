"""
This code iterates over all the tests in 'tests' directory
- All the tests should be in format .dat-s
- All the tests should have a .dat-s.res file next to them which contains their true output
- All the tests should have a .dat-s.physarum_out file next to them which contains the Physarum output

The Physarum results are compared with the ground truth and a summary will then be available in "result.txt"

"""
import json
import os
import os.path
from pathlib import Path
import re
from typing import Optional, Tuple, Dict, Any

import numpy as np
from decimal import Decimal
import pandas as pd
from math import inf


def extract_ground_truth(result_dir: str) -> Optional[float]:
    """
    This function looks into a ground truth file at directory 'result_dir'
    and extract the optimum objective value.
    """
    try:
        with open(result_dir, 'r') as input_file:
            lines = input_file.readlines()
            for line in lines:
                stripped = line.strip()
                if len(stripped) > len('objValPrimal') and stripped[:len('objValPrimal')] == 'objValPrimal':
                    value = -float(stripped.split()[-1])
                    return value
    except FileNotFoundError:
        print("[Warning] no file {} found!".format(result_dir))
        return None


def parse_legacy_output(output_dir: str) -> Dict[str, Any]:
    """
    Parses the legacy output file and returns
    time spent - primal value - infeasibility
    """
    with open(output_dir, 'r') as input_file:
        ret = {}
        lines = input_file.readlines()
        for line in lines:
            parts = line.strip().split()
            if parts[0] == 'Tr(CX)':
                ret['produced_result'] = float(parts[-1])
            if parts[0] == 'Primal' and parts[1] == 'and' and parts[2] == 'dual':
                ret['primal_dual_gap'] = float(parts[-1])
            if parts[0] == 'This' and parts[1] == 'is' and parts[2] == 'beta:':
                ret['beta'] = float(parts[-1])
            if parts[0] == 'Time' and parts[1] == 'spent':
                ret['time_spent'] = float(parts[-1])
            if parts[0] == 'Infeasibility' or parts[0] == 'Infeasibility:':
                ret['infeasibility'] = float(parts[-1])
        return ret


def parse_output(output_dir: str) -> Dict[str, Any]:
    """
    Parses the output json file and returns
    time spent - primal value - infeasibility
    """
    with open(output_dir, 'r') as f:
        output = json.load(f)
        return output


def overwrite_dict(a: Dict, b: Dict) -> Dict:
    for x in b.keys():
        a[x] = b[x]
    return a


def gather_json(experiment_dir: str) -> None:
    results = {}
    for d in os.listdir(experiment_dir):
        real_d = os.path.join(experiment_dir, d)
        if os.path.isfile(real_d):
            continue
        results[d] = {}

        # Only iterate over the directories
        for test in os.listdir(real_d):
            test_dir = os.path.join(real_d, test)

            results[d][test] = {}

            ground_truth_dir = os.path.join(test_dir, 'results.txt')
            results[d][test]['ground_truth_exists'] = False
            if os.path.exists(ground_truth_dir):
                results[d][test]['ground_truth_exists'] = True
                results[d][test]['ground_truth'] = extract_ground_truth(ground_truth_dir)

            time_spent = -1
            primal = -inf
            infeasibility = -inf

            # Parse legacy output
            legacy_output_dir = os.path.join(test_dir, 'legacy-physarum-out.txt')
            if os.path.exists(legacy_output_dir):
                res = parse_legacy_output(legacy_output_dir)
                results[d][test] = overwrite_dict(results[d][test], res)

            # Overwrite new output format if available
            output_dir = os.path.join(test_dir, 'output.json')
            if os.path.exists(output_dir):
                res = parse_output(output_dir)
                results[d][test] = overwrite_dict(results[d][test], res)

            if results[d][test]['ground_truth_exists'] and results[d][test]['ground_truth'] is not None:
                results[d][test]['gap'] = abs(results[d][test]['ground_truth'] - results[d][test]['produced_result'])

    with open(os.path.join(experiment_dir, 'results.json'), 'w') as f:
        json.dump(results, f, indent=4)


def gather_table(experiment_dir: str) -> None:
    """
    The function producess a csv that contains all the important information
    extracted for each of the subdirectories of 'experiment_dir' such as:
    1. The number of tests (# Tests)
    2. The number of tests with ground truths available (# Baseline Available)
    3. The max difference between ground truth and the produced results (Max Primal Gap)
    4. The mean time spent on the test cases (Avg. Time Spent)
    5. The max infeasibility (Max Infeasibility)
    """
    with open(os.path.join(experiment_dir, 'results.json'), 'r') as f:
        results = json.load(f)

    results_table = {
        'Dataset': [],
        '# Tests': [],
        '# Baseline Available': [],
        'Max Primal Gap': [],
        'Avg. Time Spent': [],
        'Max Infeasibility': [],
    }

    for d in results.keys():
        results_table['Dataset'].append(d)

        total_test_count = 0
        ground_truth_available_test_count = 0
        max_gap = -inf
        max_infeasibility = -inf
        all_times_spent = []

        for test in results[d].keys():
            rd = results[d][test]
            total_test_count += 1
            if 'infeasibility' in rd:
                max_infeasibility = max(max_infeasibility, rd['infeasibility'])
            if 'gap' in rd:
                ground_truth_available_test_count += 1
                max_gap = max(max_gap, rd['gap'])
            if 'time_spent' in all_times_spent:
                all_times_spent.append(rd['time_spent'])

        results_table['# Tests'].append(total_test_count)
        results_table['# Baseline Available'].append(ground_truth_available_test_count)
        results_table['Max Primal Gap'].append(max_gap)
        results_table['Max Infeasibility'].append(max_infeasibility)
        results_table['Avg. Time Spent'].append(
            None if len(all_times_spent) == 0 else sum(all_times_spent) / len(all_times_spent))

    pd.DataFrame(results_table).to_csv(os.path.join(experiment_dir, 'summary-results.csv'))


def gather_all(experiment_dir: str):
    """
    This function iterates over all the data in the experiments directory
    it then extracts important information from their output files and
    creates a summary json file 'results.json'
    """
    gather_json(experiment_dir)
    gather_table(experiment_dir)
