//
// Created by ShengDeBao on 3/1/2021.
//

#ifndef SDPSOLVER_VECTOR_H
#define SDPSOLVER_VECTOR_H

#include <Eigen/Dense>

namespace SDPComponents {
    class Vector {
    private:
        enum class Type{
            DYNAMIC = 0,
            STATIC = 1
        };
        Eigen::Matrix<double, Eigen::Dynamic, 1> vectorX;
        Eigen::VectorXd vectorStatic;
        Type tp;
    public:
        Vector(bool isDynamic = true);

        Vector(int size);

        double get(int index);
        void set(int index, double value);
    };
}


#endif //SDPSOLVER_VECTOR_H
