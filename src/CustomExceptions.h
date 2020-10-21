//
// Created by ShengDeBao on 10/21/2020.
//

#ifndef SDPSOLVER_CUSTOMEXCEPTIONS_H
#define SDPSOLVER_CUSTOMEXCEPTIONS_H

#include <exception>

class myexception: public std::exception
{
    virtual const char* what() const throw()
    {
        return "My exception happened";
    }
};

#endif //SDPSOLVER_CUSTOMEXCEPTIONS_H
