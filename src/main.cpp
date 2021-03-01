#include "SDPSolver.h"
#include "SDPSolverDerivative.h"

using namespace std;

/// The second argument suggests the implementation type
int main(int argc, char *argv[]) {
    if (argc != 4) {
        std::cout << "More arguments needed!\n[implementation method]\n[input summary file address]\n[iteration summary file address]" << std::endl;
        return EXIT_FAILURE;
    }
    std::cout << argv[0] << ' ' << argv[1] << ' ' << argv[2] << ' ' << argv[3] << std::endl;
    std::cout << "CHIZ" << std::endl;

    const int implementation_type = std::stoi(argv[1]);
    std::unique_ptr<BaseSDPSolver> a;
    switch (implementation_type) {
        case 1: {
            a = std::unique_ptr<SDPSolver>(new SDPSolver());
            break;
        }
        default: {
            std::cout << "chiz" << std::endl;
            a = std::unique_ptr<SDPSolverDerivative>(new SDPSolverDerivative());
            break;
        }
    }
    std::cout << "CHIZ O MIZ1" << std::endl;
    a->setInputSummaryFileStream(argv[2]);
    a->setIterationSummaryFileStream(argv[3]);
    std::cout << "AN!" << std::endl;
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