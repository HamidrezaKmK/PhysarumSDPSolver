#include "solvers/SDPSolver.h"
#include "solvers/SDPSolverDerivative.h"
#include "solvers/GeneralizedEigenvalueSolver.h"

using namespace std;

/// The second argument suggests the implementation type
int main(int argc, char *argv[]) {
    if (argc != 5 && argc != 2) {
        std::cout << "The arguments for main function are not correct! found: " << argc << "arguments!\n";
        std::cout << "The arguments are:\n----\n";
        for (int i = 0; i < argc; i++)
            cout << argv[i] << ' ';
        cout << "\n----" << endl;
        std::cout << "1) For complete solver enter:\n\t[implementation method]\n\t[input summary file address]\n\t[iteration summary file address]" << std::endl;
        std::cout << "2) For only evaluating the input enter:\n\t[input summary file address]\n";
        return EXIT_FAILURE;
    }
    std::cerr << "Started..." << std::endl;

    int implementation_type = 1;
    if (argc == 5)
        implementation_type = std::stoi(argv[1]);

    std::unique_ptr<BaseSDPSolver> a;

    switch (implementation_type) {
        case 1: {
            a = std::unique_ptr<SDPSolver>(new SDPSolver());
            break;
        }
        case 2: {
            a = std::unique_ptr<SDPSolverDerivative>(new SDPSolverDerivative());
            break;
        }
        case 3: {
            a = std::unique_ptr<GeneralizedEigenvalueSolver>(new GeneralizedEigenvalueSolver());
            break;
        }
        default: {
            std::cerr << "The type of implementation should be an integer in range: [1,3]" << std::endl;
            return EXIT_FAILURE;
        }
    }

    if (argc == 5) {
        a->setInputSummaryFileStream(argv[2]);
        a->setIterationSummaryFileStream(argv[3]);
        a->setIterationInfoFileAddress(argv[4]);
    } else {
        a->setInputSummaryFileStream(argv[1]);
        try {
            a->input();
        } catch (const char * msg) {
            std::cerr << msg << std::endl;
            return EXIT_FAILURE;
        }
        return 0;
    }

    try {
        a->input();
        a->setIterationInfo();

        if(!a->checkHasFeasibleAnswer()) {
            std::cout << "The problem has no feasible solution!" << std::endl;
            return 0;
        }

        if(!a->checkAnswerBounded()) {
            std::cout << "The problem is not bounded!" << std::endl;
            return 0;
        }

        std::cerr << "input done!" << std::endl;
        auto ans = a->calc();

        ans.print();

    } catch (const char * msg){
        cerr << msg << endl;
        return EXIT_FAILURE;
    }
    return 0;
}