#include "SDPSolver.h"
#include "SDPSolverDerivative.h"

using namespace std;

/// The second argument suggests the implementation type
int main(int argc, char *argv[]) {
    if (argc != 2) {
        std::cout << "Please enter one argument: the method that is going to be used." << std::endl;
        return EXIT_FAILURE;
    }

    const int implementation_type = std::stoi(argv[1]);
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

    try {
        a->input();
        auto ans = a->calc();

        cout << ans << endl;
    } catch (const char * msg){
        cerr << msg << endl;
        return EXIT_FAILURE;
    }
    return 0;
}