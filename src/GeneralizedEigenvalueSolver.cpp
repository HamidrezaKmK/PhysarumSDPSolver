//
// Created by ShengDeBao on 3/13/2021.
//

#include "GeneralizedEigenvalueSolver.h"

SDPResult GeneralizedEigenvalueSolver::iterate() noexcept {

    // R_prime = C, R_double_prime = X.inverse()
    Eigen::LLT<MatrixX> lltOfA(this->current_X);
    MatrixX L = lltOfA.matrixL();
    auto solver_t = Eigen::SelfAdjointEigenSolver<MatrixX>(L.transpose() * C * L);
    this->V = L * solver_t.eigenvectors();
    this->eigenvalues = solver_t.eigenvalues();

    //this->R_prime = this->C;
    //this->R_double_prime = this->current_X.inverse();
    //auto solver = new Eigen::GeneralizedSelfAdjointEigenSolver<MatrixX>(this->R_prime, this->R_double_prime);

    this->calculate_A_hats();
    this->calculate_M();
    this->p = M.llt().solve(this->b);
    this->calculate_Q_tilde();
    this->calculate_Q();
/*
    check faesibility of Q:

    foutIterationSummary << "This is Q:\n" << this->Q << std::endl;
    double q_infeasibility = 0;
    for (size_t i = 0; i < matrices_count; i++) {
        double sm = 0;
        for (size_t r = 0; r < matrices_dimension; r++)
            for (size_t c = 0; c < matrices_dimension; c++)
                sm += this->Q(c, r) * matrices_list[i](r, c);
        q_infeasibility += b(i) - sm;
    }
    foutIterationSummary << "infeasibility of Q: " << q_infeasibility << '\n';

*/

    // update values:

    double h = this->calculate_current_h();
    foutIterationSummary << "calculated h = " << h << '\n';
    this->current_y = this->p * h;
    foutIterationSummary << "minimum eigenvalue: " << this->current_X.eigenvalues().real().minCoeff() << std::endl;
    this->current_X = h * this->Q + (1 - h) * this->current_X;
    return SDPResult();
}

void GeneralizedEigenvalueSolver::calculate_A_hats() {
    A_hats.clear();
    for (const auto &A : matrices_list) {
        A_hats.push_back(V.transpose() * A * V);
    }
}

void GeneralizedEigenvalueSolver::calculate_M() {
    M = MatrixX(matrices_count, matrices_count);
    for (size_t l = 0; l < matrices_count; l++)
        for (size_t k = 0; k < matrices_count; k++) {
            M(l, k) = 0;
            for (size_t i = 0; i < matrices_dimension; i++)
                for (size_t j = 0; j < matrices_dimension; j++) {
                    double t = this->eigenvalues[i] + this->eigenvalues[j];
                    if (t > 1e-8)
                        M(l, k) += (2 / t) * A_hats[l](i, j) * A_hats[k](i, j);
                }
        }
}

void
GeneralizedEigenvalueSolver::calculate_Q() {
    this->Q = V * Q_tilde * V.transpose();
}

void
GeneralizedEigenvalueSolver::calculate_Q_tilde() {
    this->Q_tilde = MatrixX(matrices_dimension, matrices_dimension);
    for (size_t i = 0; i < matrices_dimension; i++)
        for (size_t j = 0; j < matrices_dimension; j++) {
            this->Q_tilde(i, j) = 0;
            for (size_t l = 0; l < matrices_count; l++) {
                this->Q_tilde(i, j) += p(l) * A_hats[l](i, j);
            }
            double t = this->eigenvalues[i] + this->eigenvalues[j];
            if (t < 1e-8)
                this->Q_tilde(i,j) = 0;
            else
                this->Q_tilde(i, j) *= 2 / t;
        }
}

double GeneralizedEigenvalueSolver::calculate_current_h() {
    //return std::max(0.0, 0.5 / (1 - this->Q_tilde.eigenvalues().real().minCoeff()));
    double L_h = 0, R_h = std::max(0.0, 1 / (1 - this->Q_tilde.eigenvalues().real().minCoeff()));
    for (int rp = 0; rp < 50; rp++) {
        double mid = (L_h + R_h) / 2;
        MatrixX tmp = mid * this->Q + (1 - mid) * this->current_X;

        MatrixX G = this->C;
        for (size_t i = 0; i < matrices_count; i++)
            G = G - mid * p(i) * matrices_list[i];

        double mnEigen = std::min(tmp.eigenvalues().real().minCoeff(), G.eigenvalues().real().minCoeff());

        if (mnEigen > 0)
            L_h = mid;
        else
            R_h = mid;
    }
    return L_h / 2;
}
