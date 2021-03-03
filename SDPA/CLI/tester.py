import os
from pathlib import Path
import subprocess
import pickle
from termcolor import colored

def test(executable_path, tests_dir, output_path, test_reg, implementation_type):
    sv_dir = os.getcwd()

    try:
        os.mkdir(".cached_queries")
    except:
        pass
    query_dict = {}
    query_dict['executable_path'] = executable_path
    query_dict['tests_dir'] = tests_dir
    query_dict['output_path'] = output_path
    query_dict['test_reg'] = test_reg
    query_dict['implementation_type'] = implementation_type
    print(query_dict)
    with open(os.path.join(os.getcwd(), ".cached_queries", "last_query"), 'wb') as outfile:
        pickle.dump(query_dict, outfile)
        outfile.close()

    os.chdir(tests_dir)
    tests_dir = os.getcwd()
    pathlist = Path(tests_dir).rglob(test_reg)
    os.chdir(executable_path)
    for path in pathlist:
        path_in_str = str(path)
        testname = os.path.basename(path_in_str)
        print(colored("[Running...] [" + testname + "] with [implementation = " + implementation_type + "] ...", 'cyan'))
        # TODO: make compatible with linux
        iteration_summary_address = os.path.join(output_path, testname) + "-iteration-summary.txt"
        input_summary_address = os.path.join(output_path, testname) + "-summary-input.txt"
        err_address = os.path.join(output_path, testname) + ".err"
        out_address = os.path.join(output_path, testname) + ".out"
        try:
            command = ("SDPSolver.exe " + str(implementation_type) + " " + input_summary_address + " " +
                        iteration_summary_address + " < " + path_in_str + " > " +
                        out_address + " 2> " + err_address)
            subprocess.call(command, shell=True)
            print("Results:")
            with open(out_address, 'r') as results:
                print(colored("========== OUTPUT FILE ==========", 'green'))
                print(results.read())
                print(colored("---------------------------------", 'green'))
                print("for more information checkout:")
                print("\t" + iteration_summary_address)
                print("\t" + input_summary_address)
                print("\t" + err_address)
                print(colored("=================================", 'green'))
                results.close()

        except subprocess.CalledProcessError:
            print(colored("ERROR: On test " + testname + " did not execute successfully!", 'red'))
            print(colored("\tFor more information check out: " + err_address, 'red'))
    os.chdir(sv_dir)

def get_cached_tester_query():
    try:
        return_dict = {}
        with open(os.path.join(os.getcwd(), ".cached_queries", "last_query"), 'rb') as infile:
            return_dict = pickle.load(infile)
        return return_dict
    except:
        return None