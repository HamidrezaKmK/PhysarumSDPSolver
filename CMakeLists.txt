cmake_minimum_required(VERSION 3.13)
project(SDPSolver VERSION 1.0)

set(CMAKE_CXX_STANDARD 14)

#include_directories(.)

add_executable(SDPSolver src/main.cpp
        src/BaseSDPSolver.h
        src/main.cpp
        src/SDPSolver.cpp
        src/SDPSolver.h
        src/SDPSolverDerivative.cpp
        src/SDPSolverDerivative.h src/bits/stdc++.h)
message(${CMAKE_PREFIX_PATH})
find_package (Eigen3 3.3 REQUIRED NO_MODULE)
target_link_libraries(SDPSolver Eigen3::Eigen)
add_compile_options(-std=c++11 --verbose)