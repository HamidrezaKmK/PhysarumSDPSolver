"""
Usage:
  main.py (-h | --help)
  main.py <INPUT_DIRECTORY> <OUTPUT_DIRECTORY> [options]

Options:
  -h --help                     Show this screen.
  --cfg=FILE                    A YAML file containing the model and dataset configurations
  <INPUT_DIRECTORY>             A directory that we are wishing to run, in this case, all
                                the files in that certain directory will run with the default
                                configuration file next to them.
  <OUTPUT_DIRECTORY>            The directory of experiments that will contain all the values
  --test-regex=REGEX_STRING     When specified, a certain regex pattern is given and all the files
                                in the directory that match this regex will run.
  -v --verbose                  Verbose outputs
"""
import re
import shutil
import warnings
from typing import Dict

from docopt import docopt
import os
from tqdm import tqdm
from yacs.config import CfgNode

from physarum_sdp.config import get_default_cfg
from physarum_sdp.data import PARSER_REGISTRY
from physarum_sdp.matrix_utils import PROBLEM_BUILDER_REGISTRY
from physarum_sdp.solvers import SOLVER_REGISTRY
from physarum_sdp.utils.gather_results import gather_all


def setup_configurations(arguments: Dict[str, str]) -> CfgNode:
    # Setup configurations
    cfg = get_default_cfg()
    if arguments['--cfg'] is not None:
        cfg.merge_from_file(arguments['--cfg'])
    return cfg


def setup_output_directory(arguments: Dict[str, str], in_dir: str) -> str:
    # Setup output directory
    if arguments['<OUTPUT_DIRECTORY>'] is None:
        warnings.warn("output directory should be defined!")
        out_dir = 'experiments'
        if not os.path.exists(out_dir):
            raise Exception(f"Output directory with dir: {out_dir} not available!")
    else:
        out_dir = arguments['<OUTPUT_DIRECTORY>']

    # Create the directory if not available
    if not os.path.exists(out_dir):
        os.mkdir(out_dir)

    # Create a subdirectory
    out_dir = os.path.join(out_dir, os.path.split(in_dir)[1])
    if not os.path.exists(out_dir):
        os.mkdir(out_dir)
    return out_dir


def setup_input_directory(arguments: Dict[str, str]) -> str:
    # Setup test directory
    if '<INPUT_DIRECTORY>' not in arguments:
        raise FileNotFoundError("You must specify a directory")
    in_dir = arguments['<INPUT_DIRECTORY>']
    return in_dir


def main(arguments: Dict[str, str]) -> None:
    cfg = setup_configurations(arguments)
    in_dir = setup_input_directory(arguments)
    out_dir = setup_output_directory(arguments, in_dir)

    # List all the files in the input directory that match the regex
    pattern = r'.*\.dat-s$'
    if '--test-regex' in arguments and arguments['--test-regex'] is not None:
        pattern = arguments['--test-regex']

    pattern = re.compile(pattern)
    for d in tqdm(os.listdir(in_dir)):
        if re.match(pattern, d):
            try:
                # 1. Parse the input
                parsed_input = PARSER_REGISTRY[cfg.DATA.PARSE_METHOD](os.path.join(in_dir, d))
                # 2. Build the problem based on the parsed input
                linear_condition_matrices, b, cost_matrix = PROBLEM_BUILDER_REGISTRY[cfg.DATA.PARSE_METHOD](parsed_input)
                # 3. Create a solver according to the configurations
                solver = SOLVER_REGISTRY[cfg.SOLVER.METHOD](cfg, linear_condition_matrices, b, cost_matrix)
                # 4. Run the solve method
                solver.solve()
                # 5. create an output directory and save all the log files and output files
                out_dir_sample = os.path.splitext(os.path.join(out_dir, d))[0]
                solver.save_logs(out_dir_sample)
                solver.save_output(out_dir_sample)
                solver.save_configs(out_dir_sample)
                # 6. Copy the ground truth results next to the other results
                shutil.copyfile(os.path.join(in_dir, d + '.res'), os.path.join(out_dir_sample, 'results.txt'))
            except Exception as e:
                print("------------[ERROR]------------")
                warnings.warn(f"Test {d} ran into some problems! Check it out later!")
                print(e)
                print("-------------------------------")
    gather_all(out_dir)


if __name__ == '__main__':
    # Docopt for command line arguments
    arguments = docopt(__doc__)
    if arguments['--help']:
        print(__doc__)
    else:
        main(arguments)
