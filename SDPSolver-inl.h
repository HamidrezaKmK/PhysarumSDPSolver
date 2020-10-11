template <size_t N, typename ElementType>
SDPSolver<N, ElementType>::SDPSolver(int matrices) noexcept
: matrices_count(matrices)
, matrices_list(matrices_count)
{
}

template<size_t N, typename ElementType>
void SDPSolver<N, ElementType>::input(const std::string& filename) noexcept
{
    std::ifstream fin(filename);
    if (fin.good())
    {
        fin >> matrices_count;

        for (size_t index = 0; index < matrices_count; ++index)
        {
            for (size_t i = 0; i < N; ++i)
                for (size_t j = 0; j < N; ++j)
                    fin >> matrices_list[index](i, j);
        }

        b = Eigen::VectorXd(matrices_count);
        for (size_t i = 0; i < matrices_count; ++i)
            fin >> b(i);

        for (size_t i = 0; i < N; ++i)
                for (size_t j = 0; j < N; ++j)
                    fin >> w(i, j);
    }
}

using namespace std;

template<size_t N, typename ElementType>
auto SDPSolver<N, ElementType>::calc() noexcept -> MatrixN
{
    typedef Eigen::Matrix<ElementType, Eigen::Dynamic, Eigen::Dynamic> MatrixX;
    MatrixX w_tilda = w;

    Eigen::SelfAdjointEigenSolver<MatrixX> solver;
    
    ElementType infeasibility = 1;
    ElementType gap = 1;
    while (infeasibility > 1e-6 || gap > 1e-6)
    {
        infeasibility = 0;
        MatrixList a_hat(matrices_count);
        for (size_t i = 0; i < matrices_count; ++i)
        {
            a_hat[i] = matrices_list[i] * w_tilda;
            const auto residual = b[i] - w_tilda.cwiseProduct(a_hat[i]).sum();
            infeasibility += abs(residual);
            std::cerr << "b(" << i << ") - tr( A_" << i << " X) = " << residual << std::endl;
        }
            
        
        MatrixX M(matrices_count, matrices_count);
        for (size_t k = 0; k < matrices_count; ++k)
            for (size_t l = k; l < matrices_count; ++l)
            {
                const ElementType current_result = a_hat[k].cwiseProduct(a_hat[l].transpose()).sum();
                M(k, l) = M(l, k) = current_result;
            }
        
        std::cerr << "Solving..." << std::endl;
        VectorX p_hat = M.llt().solve(b);

        MatrixX s_bar = MatrixX::Identity(N, N);
        ElementType bTy = 0;

        for (size_t l = 0; l < matrices_count; ++l)
        {
            s_bar -= p_hat(l) * matrices_list[l];
            bTy += p_hat(l) * b(l);
        }
        
        std::cerr << "Eigenvalues..." << std::endl;
        VectorX q = s_bar.eigenvalues().real();
        ElementType h = 0.5 / q.maxCoeff();
        bTy /= 1 - std::max(0.0, q.minCoeff());

        std::cerr << q << std::endl << "H: " << h << std::endl;

        std::cerr << "Calculating X..." << std::endl;
        std::cerr << "W_tilda:" << std::endl << w_tilda << std::endl;
        std::cerr << "I - hsbar:" << std::endl << (MatrixX::Identity(N, N) - h * s_bar) << std::endl;
        
        MatrixX tmp = (w_tilda * (MatrixX::Identity(N, N) - h * s_bar) * w_tilda);
        std::cerr << "X:" << std::endl << tmp << std::endl;
        std::cerr << "tr(X): " << tmp.trace() << std::endl;
        
        gap = tmp.trace() - bTy;
        std::cerr << "gap: " << gap << std::endl;
        
        solver.compute(tmp);

        auto eigenvalues = solver.eigenvalues();
        for (size_t i = 0; i < N; ++i)
        {
            auto& lambda = eigenvalues[i];
            if (lambda < 0)
                lambda = 0;
            else
                lambda = sqrt(lambda);
        }
        std::cerr << "Eigenvalues:" << std::endl << eigenvalues << std::endl;
        std::cerr << "Eigenvectors:" << std::endl << solver.eigenvectors() << std::endl;

        w_tilda = solver.eigenvectors() * eigenvalues.asDiagonal() * solver.eigenvectors().transpose();

        std::cerr << "W~:" << std::endl << w_tilda << std::endl << "_______________" << std::endl;
    }

    return w_tilda;
}
