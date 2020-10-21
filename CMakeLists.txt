cmake_minimum_required(VERSION 3.13)
project(SDPSolver VERSION 1.0)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O2 -Wall")

include_directories(${PROJECT_SOURCE_DIR}/src)

set(SOURCES
    src/main.cpp
    src/SDPSolver.cpp
    src/SDPSolverDerivative.cpp
        )

add_executable(SDPSolver ${SOURCES})
find_package(Eigen3 3.3 REQUIRED NO_MODULE)
target_link_libraries(SDPSolver Eigen3::Eigen)