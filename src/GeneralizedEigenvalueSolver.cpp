//
// Created by ShengDeBao on 3/13/2021.
//

#include "GeneralizedEigenvalueSolver.h"

SDPResult GeneralizedEigenvalueSolver::iterate() noexcept {

    auto sqrt_solver = new Eigen::SelfAdjointEigenSolver<MatrixX>(this->C);

    // TODO: implement a function to calculate sqrt
    Eigen::SelfAdjointEigenSolver<MatrixX>::EigenvectorsType eigenvectors = sqrt_solver->eigenvectors();
    Eigen::SelfAdjointEigenSolver<MatrixX>::RealVectorType eigenvalues = sqrt_solver->eigenvalues();

    for (size_t i = 0; i < matrices_dimension; i++) {
        eigenvalues[i] = sqrt(eigenvalues[i]);
    }

    this->R_prime = this->R_double_prime = eigenvectors * eigenvalues.asDiagonal() * eigenvectors.transpose();


    //this->R_prime = this->C;
    //this->R_double_prime = this->current_X.inverse();

    auto solver = new Eigen::GeneralizedSelfAdjointEigenSolver<MatrixX>(this->R_prime, this->R_double_prime);
    this->calculate_A_hats_bars(solver);
    this->calculate_M();
    this->p = M.llt().solve(this->b);
    this->calculate_Q_tilde(solver);
    this->calculate_Q(solver);
    // update values:
    double h = this->calculate_current_h();
    foutIterationSummary << "calculated h = " << h << '\n';
    this->current_y = this->p * h;
    foutIterationSummary << "minimum eigenvalue: " << this->current_X.eigenvalues().real().minCoeff() << std::endl;
    this->current_X = h * this->Q + (1 - h) * this->current_X;
    return SDPResult();
}

void GeneralizedEigenvalueSolver::calculate_A_hats_bars(Eigen::GeneralizedSelfAdjointEigenSolver<MatrixX>* solver) {
    for (const auto &A : matrices_list) {
        MatrixX A_hat = solver->eigenvectors().lu().solve(A);
        A_hat = solver->eigenvectors().lu().solve(A_hat.transpose()).transpose();
        A_hats.push_back(A_hat);
        A_bars.push_back(solver->eigenvectors().transpose() * A * solver->eigenvectors());
    }
}

void GeneralizedEigenvalueSolver::calculate_M() {
    M = MatrixX(matrices_count, matrices_count);
    for (size_t l = 0; l < matrices_count; l++)
        for (size_t k = 0; k < matrices_count; k++) {
            M(l, k) = 0;
            for (size_t i = 0; i < matrices_dimension; i++)
                for (size_t j = 0; j < matrices_dimension; j++)
                    M(l, k) += A_hats[l](i, j) * A_hats[k](i, j);
        }
}

void
GeneralizedEigenvalueSolver::calculate_Q(Eigen::GeneralizedSelfAdjointEigenSolver<BaseSDPSolver::MatrixX> *solver) {
    this->Q = solver->eigenvectors() * this->Q_tilde* solver->eigenvectors().transpose();
}

void
GeneralizedEigenvalueSolver::calculate_Q_tilde(Eigen::GeneralizedSelfAdjointEigenSolver<BaseSDPSolver::MatrixX> *solver) {
    this->Q_tilde = MatrixX(matrices_dimension, matrices_dimension);
    for (size_t i = 0; i < matrices_dimension; i++)
        for (size_t j = 0; j < matrices_dimension; j++) {
            this->Q_tilde(i, j) = 0;
            for (size_t l = 0; l < matrices_count; l++) {
                this->Q_tilde(i, j) += p(l) * A_bars[l](i, j);
            }
            double t = solver->eigenvalues()[i] + solver->eigenvalues()[j];
            if (t < 1e-6)
                this->Q_tilde(i,j) = 0;
            else
                this->Q_tilde(i, j) *= 2 / (solver->eigenvalues()[i] + solver->eigenvalues()[j]);
        }
}

double GeneralizedEigenvalueSolver::calculate_current_h() {
    return std::max(0.0, 1.0 / (1 - this->Q_tilde.eigenvalues().real().minCoeff()));
}
