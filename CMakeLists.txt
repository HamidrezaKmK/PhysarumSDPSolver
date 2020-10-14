cmake_minimum_required(VERSION 3.13)
project(SDPSolver)

#set(CMAKE_CXX_STANDARD 14)

#include_directories(.)

add_executable(SDPSolver src/main.cpp src/SDPSolver.h src/SDPSolver_derivativeMethod.cpp)
#add_compile_options(--verbose)