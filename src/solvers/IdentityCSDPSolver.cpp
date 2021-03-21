//
// Created by ShengDeBao on 3/21/2021.
//

#include "IdentityCSDPSolver.h"

SDPResult IdentityCSDPSolver::calc_pos_def() {
    auto solver = Eigen::SelfAdjointEigenSolver<MatrixX>(this->C);
    Eigen::SelfAdjointEigenSolver<Eigen::Matrix<double, -1, -1, 0, -1, -1>>::EigenvectorsType eigenvectors = solver.eigenvectors();
    Eigen::Matrix<double, -1, 1, 0, -1, 1> eigenvalues = solver.eigenvalues();

    std::cerr << "The eigen values are: " << eigenvalues << std::endl;
    for (size_t i = 0; i < matrices_dimension; ++i)
    {
        auto &lambda = eigenvalues[i];
        if (lambda <= 0)
            throw "Matrix not positive definite in calc_pos_def!";
        else
            lambda = sqrt(lambda);
    }
    this->R_prime = this->R_double_prime
            = eigenvectors * eigenvalues.asDiagonal() * eigenvectors.transpose();
    for (size_t i = 0; i < matrices_count; i++) {
        matrices_list[i] = R_prime.inverse() * matrices_list[i] * R_double_prime.inverse();
    }

    SDPResult res = iterate();

    // revert changes:
    res.setX(this->R_double_prime.inverse() * res.W * res.W * this->R_prime.inverse());
    for (size_t i = 0; i < matrices_count; i++) {
        matrices_list[i] = R_prime * matrices_list[i] * R_double_prime;
    }
    return res;
}
