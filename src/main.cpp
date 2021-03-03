#include "SDPSolver.h"
#include "SDPSolverDerivative.h"

using namespace std;

/// The second argument suggests the implementation type
int main(int argc, char *argv[]) {
    if (argc != 4 && argc != 2) {
        std::cout << "The arguments for main function are not correct! found: " << argc << "arguments!\n";
        std::cout << "The arguments are:\n----\n";
        for (int i = 0; i < argc; i++)
            cout << argv[i] << ' ';
        cout << "\n----" << endl;
        std::cout << "1) For complete solver enter:\n\t[implementation method]\n\t[input summary file address]\n\t[iteration summary file address]" << std::endl;
        std::cout << "2) For only evaluating the input enter:\n\t[input summary file address]\n";
        return EXIT_FAILURE;
    }
    int implementation_type = 1;
    if (argc == 4)
        implementation_type = std::stoi(argv[1]);

    std::unique_ptr<BaseSDPSolver> a;
    switch (implementation_type) {
        case 1: {
            a = std::unique_ptr<SDPSolver>(new SDPSolver());
            break;
        }
        default: {
            a = std::unique_ptr<SDPSolverDerivative>(new SDPSolverDerivative());
            break;
        }
    }

    if (argc == 4) {
        a->setInputSummaryFileStream(argv[2]);
        a->setIterationSummaryFileStream(argv[3]);
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

    if(!a->checkHasFeasibleAnswer()) {
        std::cout << "The problem has no feasible solution!" << std::endl;
        return 0;
    }

    try {
        a->input();
        std::cout << "input done!" << std::endl;
        auto ans = a->calc();

        cout << "X:\n";
        cout << ans.X << endl;
        cout << "y:\n";
        cout << ans.y << endl;
        cout << "gap:\n";
        cout << ans.gap << endl;

    } catch (const char * msg){
        cerr << msg << endl;
        return EXIT_FAILURE;
    }
    return 0;
}