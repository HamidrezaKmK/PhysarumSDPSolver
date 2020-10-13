#include "SDPSolver.h"

using namespace std;

// the second argument suggest the implementation type

int main(int argc, char *argv[])
{
    cout << "HHI" << endl;
    if (argc != 2)
    {
        std::cout << "Please enter one argument: the input file path." << std::endl;
        return EXIT_FAILURE;
    }

    const std::string implementationType = argv[1];
//    switch (implementationType) {
//        case "Standard":
//            break;
//    }
    SDPSolver a;
    a.input();
    auto ans = a.calc();

    cout << ans << endl;
    return 0;
}