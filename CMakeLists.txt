cmake_minimum_required(VERSION 3.13)
project(SDPSolver)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(SDPSolver
        .gitignore
        input.txt
        main.cpp
        README.md
        SDPSolver-inl.h
        SDPSolver.h)
