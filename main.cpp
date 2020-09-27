#include "SDPSolver.h"

int main()
{
    SDPSolver<3> a(3);
    a.input("input.txt");
    auto ans = a.calc();

    std::cout << ans << std::endl;
    return 0;
}