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

template<size_t N, typename ElementType>
auto SDPSolver<N, ElementType>::calc() noexcept -> MatrixN
{
    typedef Eigen::Matrix<ElementType, Eigen::Dynamic, Eigen::Dynamic> MatrixX;
    MatrixX w_tilda = w;

    Eigen::EigenSolver<MatrixX> solver;
    
    for (int i = 0; i < 1000; ++i)
    {
        MatrixList a_hat(matrices_count);
        for (size_t i = 0; i < matrices_count; ++i)
            a_hat[i] = matrices_list[i] * w_tilda;
        
        MatrixX M(matrices_count, matrices_count);
        for (size_t k = 0; k < matrices_count; ++k)
            for (size_t l = k; l < matrices_count; ++l)
            {
                const ElementType current_result = a_hat[k].cwiseProduct(a_hat[l]).sum();
                M(k, l) = M(l, k) = current_result;
            }
        
        std::cerr << "Solving..." << std::endl;
        VectorX p_hat = M.colPivHouseholderQr().solve(b);

        MatrixX s_bar = MatrixX::Identity(N, N);

        for (size_t l = 0; l < matrices_count; ++l)
        {
            s_bar -= p_hat(l) * matrices_list[l];
        }

        std::cerr << "Eigenvalues..." << std::endl;
        VectorX q = s_bar.eigenvalues().real();
        ElementType h = std::max(abs(q.maxCoeff()), abs(q.minCoeff()));

        std::cerr << q << std::endl << "H: " << h << std::endl;

        h /= 10;
        std::cerr << "Calculating TMP..." << std::endl;
        std::cerr << "W_tilda:" << std::endl << w_tilda << std::endl;
        std::cerr << "I - hsbar:" << std::endl << (MatrixX::Identity(N, N) - h * s_bar) << std::endl;
        
        MatrixX tmp = (w_tilda * (MatrixX::Identity(N, N) - h * s_bar) * w_tilda);
        std::cerr << "tmp:" << std::endl <<  tmp << std::endl;

        solver.compute(tmp);

        VectorX eigenvalues = solver.eigenvalues().real().cwiseSqrt();
        std::cerr << "Eigenvalues:" << std::endl <<  eigenvalues << std::endl;
        std::cerr << "Eigenvectors:" << std::endl <<  solver.eigenvectors().real() << std::endl;

        w_tilda = solver.eigenvectors().real() * eigenvalues.asDiagonal() * solver.eigenvectors().real().inverse();

        std::cerr << w_tilda << std::endl << "_______________" << std::endl;
    }

    return w_tilda;
}