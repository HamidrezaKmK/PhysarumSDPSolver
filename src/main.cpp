#include "SDPSolver.h"

int main(int argc, char* argv[])
{
    if (argc != 2)
    {
        std::cout << "Please enter one argument: the input file path." << std::endl;
        return EXIT_FAILURE;
    }

    const std::string inputfile = argv[1];
    SDPSolver a;
    a.input(inputfile);
    auto ans = a.calc();

    std::cout << ans << std::endl;
    return 0;
}