
def compare_results(ground_truth, physarum_output_dir, output_file):
    try:
        error = 0
        iter_count = 0
        h_bound = 0
        restart_factor = ''
        beta = ''
        method_number = 0
        infeasibility = 0
        time_spent = 0
        beta = None
        with open(physarum_output_dir, 'r') as input_file:
            lines = input_file.readlines()
            for line in lines:
                parts = line.strip().split()
                if parts[0] == '[Augmented':
                    output_file.write("- [Augmented Setting]")
                if parts[0] == '[General':
                    output_file.write("- [General Setting]")
                if parts[0] == 'Tr(CX)':
                    calculated = float(parts[-1])
                    output_file.write(
                        "-Ground truth: {}\n-Physarum solver output: {}\n-Error: {}\n".format(ground_truth, calculated,
                                                                                              abs(ground_truth - calculated)))
                    error = abs(ground_truth - calculated)
                if parts[0] == 'Primal' and parts[1] == 'and' and parts[2] == 'dual':
                    output_file.write("-Gap: {}\n".format(parts[-1]))
                if parts[0] == 'Number':
                    output_file.write("-Number of iterations: {}\n".format(parts[-1]))
                    iter_count = int(parts[-1])
                if parts[0] == 'Maximum' and parts[1] == 'h':
                    h_bound = float(parts[-1])
                    output_file.write("-h bound: {}\n".format(h_bound))
                if parts[0] == 'Method':
                    method_name = ' '.join(parts[3:])
                    output_file.write("-Method name is: {}\n".format(method_name))
                if parts[0] == 'Restart':
                    restart_factor = int(parts[-1])
                    output_file.write('-Restart factor is: {}\n'.format(restart_factor))
                if parts[0] == 'This' and parts[1] == 'is' and parts[2] == 'beta:':
                    beta = float(parts[-1])
                    output_file.write('-Beta obtained: {}\n'.format(beta))
                if parts[0] == 'Time' and parts[1] == 'spent':
                    time_spent = float(parts[-1])
                    output_file.write('-Time spent: {}\n'.format(time_spent))
                if parts[0] == 'Infeasibility' or parts[0] == 'Infeasibility:':
                    infeasibility = float(parts[-1])
                    output_file.write("-Infeasibility: {}\n".format(infeasibility))
            return error, iter_count, infeasibility, time_spent, beta
    except FileNotFoundError:
        print("[Warning] no file {} found!".format(physarum_output_dir))
        return 0, 0, 0, 0, -inf


# The directory in which all the tests are at:


def main():
    tests_directory = input("Enter test directory to gather results: ")
    error_threshold = float(
        input("Enter fasibility threshold (All tests that have a lower error will be considered as accepted): "))
    nm = 'number of accepted tests (<{})'.format(error_threshold)
    all_results_dict = {
        'dataset': [],
        'maximum optimality gap': [],
        'average iteration count': [],
        'maximum infeasibility': [],
        'average time spent': [],
        'test count': [],
        'maximum beta (if available)': [],
        nm: [],
        'average error on accepted': []
    }

    with open('../../experiments/results.txt', 'w') as output_file:
        list_of_dirs = [str(x.name) for x in Path(tests_directory).iterdir() if x.is_dir()]
        cnt = 0
        for dir in list_of_dirs:
            output_file.write("--- {} ---\n".format(dir))
            errors = []
            iteration_counts = []
            infeasibilities = []
            times = []
            betas = []
            accepted = []
            for path in Path(os.path.join(tests_directory, dir)).rglob('*'):
                if len(str(path)) > 6 and str(path)[-6:] == '.dat-s':
                    name = str(path)
                    ground_truth = extract_ground_truth(name + '.res')
                    output_file.write("\n> [Test] {}\n".format(name))
                    error, iter_count, infeasibility, time_spent, beta = compare_results(ground_truth,
                                                                                         name + '.physarum_out',
                                                                                         output_file)
                    errors.append(error)
                    times.append(round(time_spent, 1))
                    iteration_counts.append(iter_count)
                    infeasibilities.append(infeasibility)
                    if error <= error_threshold:
                        accepted.append(error)
                        if beta is not None:
                            betas.append(abs(beta))
            if len(betas) > 0:
                betas = np.array(betas, dtype=Decimal)
            errors = np.array(errors, dtype=Decimal)
            times = np.array(times, dtype=Decimal)
            infeasibilities = np.array(infeasibilities, dtype=Decimal)
            iteration_counts = np.array(iteration_counts, dtype=float)
            if len(errors) > 0:
                all_results_dict['maximum optimality gap'].append(np.max(errors))
                all_results_dict['average iteration count'].append(np.mean(iteration_counts))
                all_results_dict['dataset'].append(dir)
                all_results_dict['maximum infeasibility'].append(np.max(infeasibilities))
                all_results_dict['average time spent'].append(np.mean(times))
                all_results_dict['test count'].append(len(errors))
                if len(accepted) > 0:
                    accepted = np.array(accepted)
                    all_results_dict['average error on accepted'].append(np.mean(accepted))
                else:
                    all_results_dict['average error on accepted'].append(-1)
                all_results_dict[nm].append(len(accepted))
                if len(betas) > 0:
                    all_results_dict['maximum beta (if available)'].append(np.max(betas))
                else:
                    all_results_dict['maximum beta (if available)'].append('')
                output_file.write("\n>Mean optimality gap: {}\n".format(np.mean(errors)))
                output_file.write(">Maximum optimality gap: {}\n".format(np.max(errors)))
                output_file.write(">Mean iteration counts: {}\n".format(np.mean(iteration_counts)))
            output_file.write("============\n\n")
            cnt += 1

    pd.DataFrame(all_results_dict).to_csv('summary-results.csv')


if __name__ == '__main__':
    main()
