//
// Created by ShengDeBao on 3/13/2021.
//

#include "GeneralizedEigenvalueSolver.h"

SDPResult GeneralizedEigenvalueSolver::iterate() noexcept {



    Eigen::SelfAdjointEigenSolver<MatrixX> solver1(this->alpha * this->C_PseudoInverse + this->beta * this->current_X);
    MatrixX U = solver1.eigenvectors();
    auto Psi = solver1.eigenvalues();


    foutIterationSummary << "Check ||U Psi UT - [alpha * (C+) + beta * X]||_1 = " <<
                         (U * Psi.asDiagonal() * U.transpose() -
                          (this->alpha * this->C_PseudoInverse + this->beta * this->current_X)).lpNorm<1>()
                         << std::endl;
    foutIterationSummary << "Max eigenvalue in Psi: " << Psi.real().maxCoeff() << '\n';
    foutIterationSummary << "Min eigenvalue in Psi: " << Psi.real().minCoeff() << '\n';

    for (size_t i = 0; i < matrices_dimension; i++)
        Psi[i] = sqrt(Psi[i]);

    //Eigen::LLT<MatrixX> lltOfA(this->alpha * this->C_PseudoInverse + this->beta * this->current_X);
    //const MatrixX L = lltOfA.matrixL();


    MatrixX L = U * Psi.asDiagonal();

    auto solver_t = Eigen::SelfAdjointEigenSolver<MatrixX>(L.transpose() * C * L);
    this->V = L * solver_t.eigenvectors();
    this->eigenvalues = solver_t.eigenvalues();

    foutIterationSummary << "Minimum generalized eigenvalue: " << eigenvalues.minCoeff() << std::endl;

    foutIterationSummary << "Check ||V^{-T} Lambda V^{-1} - C||_1 = "
                         << (V.transpose().inverse() * eigenvalues.asDiagonal() * V.inverse() - C).lpNorm<1>()
                         << std::endl;
    foutIterationSummary << "Check ||V V^T - alpha * (C+) + beta * X||_1 = " << (V * V.transpose() -
                                                                                 (this->alpha * this->C_PseudoInverse +
                                                                                  this->beta *
                                                                                  this->current_X)).lpNorm<1>()
                         << std::endl;


    // calculate 'd' s
    this->d = this->eigenvalues;
    for (size_t i = 0; i < matrices_dimension; i++) {
         if (abs(this->eigenvalues[i]) == 0 )
             this->d[i] = this->beta;
        else if (this->eigenvalues[i] <= this->alpha)
           this->d[i] = std::numeric_limits<double>::infinity();
         else
            this->d[i] = (this->beta * this->eigenvalues[i]) / (this->eigenvalues[i] - this->alpha);
    }

    this->d_pinv = this->d;
    for (size_t i = 0; i < matrices_dimension; i++) {
        if (this->d(i) != 0)
            this->d_pinv(i) = 1 / this->d(i);
        else
            this->d_pinv(i) = 0;
    }
    this->calculate_A_hats();

    if (this->outputSummaryMatrices)
        foutIterationSummary << "This is d:\n" << this->d << '\n';
    if (this->outputSummaryMatrices)
        foutIterationSummary << "These are lambdas:\n" << this->eigenvalues << '\n';

    this->calculate_M();

    if (this->outputSummaryMatrices)
        foutIterationSummary << "M: " << std::endl << M << std::endl;

    VectorX b_(A_hats.size());
    for (size_t i = 0; i < A_hats.size(); i++)
        if (i < matrices_count)
            b_(i) = this->b(i);
        else
            b_(i) = 0;

    this->p = M.llt().solve(b_);

    foutIterationSummary << "Check ||M p - b_||_1 = " << (M * p - b_).lpNorm<1>() << std::endl;
    this->calculate_Q_tilde();
    this->calculate_Q();
    foutIterationSummary << "Q:" << std::endl << this->Q << std::endl;
    

    // update values:
    double h = this->calculate_current_h();

    MatrixX newX = h * this->Q + (1 - h) * this->current_X;
    Eigen::SelfAdjointEigenSolver<MatrixX>solver_newX(newX);
    if (solver_newX.eigenvalues().real().minCoeff() < 0) {
        std::cerr << "Negative eigenvalues detected in X!\n";
        std::cerr << "Value of h: " << h << std::endl;
        std::cerr << "Minimum eigenvalue of the new X: " << solver_newX.eigenvalues().real().minCoeff() << '\n';
        if (this->outputSummaryMatrices) {
            std::cerr << "This is the new X's eigen values:\n" << solver_newX.eigenvalues() << std::endl;
        }
        //exit(EXIT_FAILURE);
        newX -= solver_newX.eigenvalues().real().minCoeff()*MatrixX::Identity(newX.rows(),newX.cols());
    }


    foutIterationSummary << "calculated h = " << h << '\n';
    double tau = this->calculate_current_tau();

    foutIterationSummary << "calculated tau = " << tau << '\n';

    this->current_y = VectorX(matrices_count);
    for (size_t i = 0; i < matrices_count; i++)
        this->current_y(i) = this->p(i) * tau;
    //this->current_y = VectorX(this->p, this->matrices_count) * tau;

    Eigen::SelfAdjointEigenSolver<MatrixX>solver_current_X(this->current_X);
    foutIterationSummary << "minimum eigenvalue: " << solver_current_X.eigenvalues().real().minCoeff() << std::endl;
    this->current_X = newX; //h * this->Q + (1 - h) * this->current_X + ;
    return SDPResult();
}

void GeneralizedEigenvalueSolver::calculate_A_hats() {
    A_hats.clear();
    for (const auto &A : matrices_list) {
        A_hats.push_back(V.transpose() * A * V);
    }
//     for (size_t i = 0; i < matrices_dimension; i++)
//         A_hats.push_back(V.transpose() * V.col(i) * V.col(i).transpose() * V);
}

void GeneralizedEigenvalueSolver::calculate_M() {
    size_t A_hats_count = A_hats.size();
    M = MatrixX(A_hats_count, A_hats_count);
    if (this->outputSummaryMatrices) {
        foutIterationSummary << "\n===========\nThese are additional A hats:\n";
        for (size_t i = matrices_count; i < A_hats_count; i++)
            foutIterationSummary << A_hats[i] << "\n-----\n";
        foutIterationSummary << "==========\n";
    }
    for (size_t l = 0; l < A_hats_count; l++)
        for (size_t k = 0; k < A_hats_count; k++) {
            M(l, k) = 0;
            for (size_t i = 0; i < matrices_dimension; i++)
                for (size_t j = 0; j < matrices_dimension; j++) {
                    double t = this->eigenvalues[i] * this->d[j] + this->eigenvalues[j] * this->d[i];
                        M(l, k) += (2 / t) * A_hats[l](i, j) * A_hats[k](i, j);
                    //if (abs(t) >= EPS)
                    //    M(l, k) += (2 / t) * A_hats[l](i, j) * A_hats[k](i, j);

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
            for (size_t l = 0; l < A_hats.size(); l++) {
                this->Q_tilde(i, j) += p(l) * A_hats[l](i, j);
            }
            double t = this->d[j] * this->eigenvalues[i] + this->d[i] * this->eigenvalues[j];
            this->Q_tilde(i, j) *= 2 / t;
            /*if (abs(t) < EPS)
                this->Q_tilde(i, j) = 0;
            else
                this->Q_tilde(i, j) *= 2 / t;*/
        }
    }
    foutIterationSummary << "Q~:" << std::endl << this->Q_tilde << std::endl;
    Eigen::SelfAdjointEigenSolver<MatrixX> tmp_solver( this->Q_tilde );
    foutIterationSummary << "eigenvalues of Q~:" << std::endl << tmp_solver.eigenvalues() << std::endl;
    foutIterationSummary << "eigenvectors of Q~ on D+:" << std::endl << (tmp_solver.eigenvectors().transpose() * d_pinv.asDiagonal() * tmp_solver.eigenvectors()) << std::endl;
}

double GeneralizedEigenvalueSolver::calculate_current_h() {
    double LH = 0, RH = 1;
    for (int rp = 0; rp < 100; rp++) {
        double mid = (LH + RH) / 2;
        MatrixX tmp = this->d_pinv.asDiagonal();
        MatrixX newX = mid * this->Q_tilde + (1 - mid) * tmp;
        Eigen::SelfAdjointEigenSolver<MatrixX>solver_newX(newX);
        if (solver_newX.eigenvalues().real().minCoeff() < 0) {
            RH = mid;
        } else {
            LH = mid;
        }
    }
    return LH / 4;

//     auto H = MatrixX(matrices_dimension, matrices_dimension);
//     for (size_t i = 0; i < matrices_dimension; i++)
//         for (size_t j = 0; j < matrices_dimension; j++) {
//             if (eigenvalues[i] > alpha + EPS && eigenvalues[j] > alpha + EPS) {
//                 H(i, j) = sqrt(this->d[i]) * Q_tilde(i, j) * sqrt(this->d[j]);// * beta / sqrt(1 - alpha / eigenvalues[i]) / sqrt(1 - alpha / eigenvalues[j]);
//             } else {
//                 H(i, j) = 0;
//             }
//         }
//     if (this->outputSummaryMatrices) {
//         foutIterationSummary << "H:\n" << H << '\n';
//         foutIterationSummary << "eigenvalues of H:\n" << H.eigenvalues() << '\n';
//     }
//     const auto lambda_min = H.eigenvalues().real().minCoeff();
//     const auto ret = lambda_min < 1 ? 0.75 / (1 - lambda_min) : 1;
//     return abs(ret) < EPS ? 0 : ret;
}

double GeneralizedEigenvalueSolver::calculate_current_tau() {
    double LTau = 0, RTau = 1;
    for (int rp = 0; rp < 100; rp++) {
        double mid = (LTau + RTau) / 2;
        MatrixX T = C;
        for (size_t i = 0; i < matrices_count; i++) {
            T -= mid * this->p(i) * matrices_list[i];
        }
        Eigen::SelfAdjointEigenSolver<MatrixX>solver_T(T);
        if (solver_T.eigenvalues().real().minCoeff() < 0) {
            RTau = mid;
        } else {
            LTau = mid;
        }
    }
    return LTau;

    auto G = MatrixX(matrices_dimension, matrices_dimension);
    for (size_t i = 0; i < matrices_dimension; i++)
        for (size_t j = 0; j < matrices_dimension; j++) {
            G(i, j) = 0;
            for (size_t l = 0; l < A_hats.size(); l++) {
                G(i, j) += p(l) * A_hats[l](i, j);
            }
            double t = sqrt(this->eigenvalues[i] * this->eigenvalues[j]);
            G(i, j) /= t;
        }

    const auto lambda_max = G.eigenvalues().real().maxCoeff();
    return 1 / lambda_max;
}

void GeneralizedEigenvalueSolver::customInitialization() {
    Eigen::SelfAdjointEigenSolver<MatrixX> tmp_solver(this->C);
    auto lambdas = tmp_solver.eigenvalues();
    for (size_t i = 0; i < (size_t) lambdas.size(); i++) {
        if (lambdas[i] > 0)
            lambdas[i] = 1 / lambdas[i];
    }
    this->C_PseudoInverse = tmp_solver.eigenvectors() * lambdas.asDiagonal() * tmp_solver.eigenvectors().transpose();
    std::cout << "alpha and beta: " << this->alpha << ' ' << this->beta << '\n';
    if (this->outputSummaryMatrices)
        std::cout << "inverse of C:\n" << this->C_PseudoInverse << '\n';
}
