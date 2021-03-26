//
// Created by ShengDeBao on 3/13/2021.
//

#include "GeneralizedEigenvalueSolver.h"

SDPResult GeneralizedEigenvalueSolver::iterate() noexcept {

    Eigen::LLT<MatrixX> lltOfA(this->alpha * this->C_PseudoInverse + this->beta * this->current_X);
    const MatrixX L = lltOfA.matrixL();
    
    foutIterationSummary << "Check ||L L^T - X||_1 = " << ( L * L.transpose() -
        (this->alpha * this->C_PseudoInverse + this->beta * this->current_X)).lpNorm<1>() << std::endl;

    auto solver_t = Eigen::SelfAdjointEigenSolver<MatrixX>( L.transpose() * C * L );

    this->V = L * solver_t.eigenvectors();
    this->eigenvalues = solver_t.eigenvalues();
    
    foutIterationSummary << "Minimum generalized eigenvalue: " << eigenvalues.minCoeff() << std::endl;
    
    foutIterationSummary << "Check ||V^{-T} Lambda V^{-1} - C||_1 = " << (V.transpose().inverse() * eigenvalues.asDiagonal() * V.inverse() - C).lpNorm<1>() << std::endl;
    foutIterationSummary << "Check ||V V^T - X||_1 = " << (V * V.transpose() -
            (this->alpha * this->C_PseudoInverse + this->beta * this->current_X)).lpNorm<1>() << std::endl;
    

    this->calculate_A_hats();
    // calculate 'd' s
    this->d = this->eigenvalues;
    for (size_t i = 0; i < matrices_dimension; i++) {
        if (abs(this->eigenvalues[i]) < 1e-10)
            this->d[i] = this->beta;
        else if (abs(this->eigenvalues[i] - this->alpha) < 1e-10)
            this->d[i] = 0;
        else
            this->d[i] = (this->beta * this->eigenvalues[i]) / (this->eigenvalues[i] - this->alpha);
    }
    foutIterationSummary << "This is d:\n" << this->d << '\n';

    this->calculate_M();

    if (this->outputSummaryMatrices)
        foutIterationSummary << "M: " << std::endl << M << std::endl;
    
    this->p = M.llt().solve(this->b);
    foutIterationSummary << "Check ||M p - b||_1 = " << (M * p - b).lpNorm<1>() << std::endl;
    this->calculate_Q_tilde();
    this->calculate_Q();


    // update values:

    double h = this->calculate_current_h();
    foutIterationSummary << "calculated h = " << h << '\n';
    double tau = this->calculate_current_tau();
    foutIterationSummary << "calculated tau = " << tau << '\n';
    this->current_y = this->p * tau;
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
                    double t = this->eigenvalues[i] * this->d[j] + this->eigenvalues[j] * this->d[i];
                    M(l, k) += (2 / t) * A_hats[l](i, j) * A_hats[k](i, j);
                    /*if (t >= 1e-9)
                        M(l, k) += (2 / t) * A_hats[l](i, j) * A_hats[k](i, j);
                    */
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
    for (size_t i = 0; i < matrices_dimension; i++) {
        for (size_t j = 0; j < matrices_dimension; j++) {
            this->Q_tilde(i, j) = 0;
            for (size_t l = 0; l < matrices_count; l++) {
                this->Q_tilde(i, j) += p(l) * A_hats[l](i, j);
            }
            double t = this->d[j] * this->eigenvalues[i] + this->d[i] * this->eigenvalues[j];
            this->Q_tilde(i, j) *= 2 / t;
            /*if (t < 1e-9)
                this->Q_tilde(i, j) = 0;
            else
                this->Q_tilde(i, j) *= 2 / t;
            */
        }
    }
}

double GeneralizedEigenvalueSolver::calculate_current_h() {
  const auto lambda_min = this->Q_tilde.eigenvalues().real().minCoeff();
  return lambda_min < 1 ? 0.5 / ( 1 - lambda_min ) : 1;
}

double GeneralizedEigenvalueSolver::calculate_current_tau() {
  auto G = MatrixX(matrices_dimension, matrices_dimension);
  for (size_t i = 0; i < matrices_dimension; i++)
    for (size_t j = 0; j < matrices_dimension; j++) {
      G(i, j) = 0;
      for (size_t l = 0; l < matrices_count; l++) {
        G(i, j) += p(l) * A_hats[l](i, j);
      }
      double t = sqrt(this->eigenvalues[i] * this->eigenvalues[j]);
      G(i, j) /=  t;
    }
    
  const auto lambda_max = G.eigenvalues().real().maxCoeff();
  return 1/lambda_max;
}

void GeneralizedEigenvalueSolver::customInitialization() {
    Eigen::SelfAdjointEigenSolver<MatrixX>tmp_solver(this->C);
    auto lambdas = tmp_solver.eigenvalues();
    for (size_t i = 0; i < (size_t) lambdas.size(); i++) {
        if (lambdas[i] > 1e-12)
            lambdas[i] = 1/lambdas[i];
    }
    this->C_PseudoInverse = tmp_solver.eigenvectors() * lambdas.asDiagonal() * tmp_solver.eigenvectors().transpose();
    std::cout << "alpha and beta: " << this->alpha << ' ' << this->beta << '\n';
    std::cout << "inverse of C:\n" << this->C_PseudoInverse << '\n';
}
