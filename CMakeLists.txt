cmake_minimum_required(VERSION 3.13)
project(SDPSolver VERSION 1.0)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O2 -Wall")

include_directories(${PROJECT_SOURCE_DIR}/src)

set(SOURCES
    src/main.cpp
        src/solvers/BaseSDPSolver.cpp
        src/solvers/SDPSolver.cpp
        src/solvers/SDPSolverDerivative.cpp
        src/SDPResult.h src/SDPResult.cpp src/SDPResult.h src/components/Matrix.cpp src/components/Matrix.h src/components/Vector.cpp src/components/Vector.h src/solvers/GeneralizedEigenvalueSolver.cpp src/solvers/GeneralizedEigenvalueSolver.h src/solvers/IdentityCSDPSolver.cpp src/solvers/IdentityCSDPSolver.h)

add_executable(SDPSolver ${SOURCES})
find_package(Eigen3 3.3 REQUIRED NO_MODULE)
target_link_libraries(SDPSolver Eigen3::Eigen)