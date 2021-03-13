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

    auto solver = new Eigen::GeneralizedSelfAdjointEigenSolver<MatrixX>(this->R_prime, this->R_double_prime);
    this->calculate_A_hats_bars(solver);
    this->calculate_M();
    this->p = M.llt().solve(this->b);
    this->calculate_Q(solver);
    // update values:
    this->current_y = this->p;

    // TODO: this should change!
    /*double L_h = 1e-5, R_h = 0.5;
    for (int rp = 0; rp < 50; rp++) {
        double mid_h = (L_h + R_h) / 2;
        MatrixX tmp = mid_h * this->Q + (1 - mid_h) * this->current_X;
        if (tmp.eigenvalues().real().minCoeff() < 0)
            R_h = mid_h;
        else
            L_h = mid_h;
    }
    //std::cout << "h value: " << L_h << std::endl;
    L_h = 1e-2;

    this->current_X = L_h * this->Q * (1 - L_h) * this->current_X;
*/
    double h = this->calculate_current_h();
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
    MatrixX Q_tilde(matrices_dimension, matrices_dimension);
    for (size_t i = 0; i < matrices_dimension; i++)
        for (size_t j = 0; j < matrices_dimension; j++) {
            Q_tilde(i, j) = 0;
            for (size_t l = 0; l < matrices_count; l++) {
                Q_tilde(i, j) += p(l) * A_bars[l](i, j);
            }
            double t = solver->eigenvalues()[i] + solver->eigenvalues()[j];
            if (t < 1e-6)
                Q_tilde(i,j) = 0;
            else
                Q_tilde(i, j) *= 2 / (solver->eigenvalues()[i] + solver->eigenvalues()[j]);
        }
    this->Q = solver->eigenvectors() * Q_tilde * solver->eigenvectors().transpose();
}
