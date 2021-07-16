SDPA start at [Thu Jul 15 21:27:25 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset3\dense25negative-definite11.dat-s  : sparse
"Dense tests with negative definite C matrices matrices have dimension 25 * 25 and 1-10 constraints"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset3\dense25negative-definite11.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -1.35e+004 9.1e-001 1.0e+000 2.00e-001
 1 1.8e+003 9.2e-002 2.4e-016 +2.41e-001 -1.69e+004 9.9e-001 1.6e+000 2.00e-001
 2 2.9e+002 8.6e-004 4.8e-016 +2.13e-001 -7.12e+003 1.0e+000 1.1e+000 2.00e-001
 3 4.5e+001 9.3e-018 1.1e-016 +1.88e-001 -1.13e+003 5.0e+001 9.8e-001 1.00e-001
 4 5.3e+000 9.3e-018 7.6e-018 -1.58e+000 -1.35e+002 9.9e-001 9.9e-001 1.00e-001
 5 6.0e-001 9.3e-018 7.6e-018 -1.50e+000 -1.64e+001 1.1e+000 9.6e-001 1.00e-001
 6 7.8e-002 9.3e-018 1.9e-018 -1.75e+000 -3.70e+000 1.3e+000 9.7e-001 1.00e-001
 7 9.4e-003 9.3e-018 3.8e-018 -1.77e+000 -2.00e+000 1.4e+000 9.9e-001 1.00e-001
 8 1.0e-003 9.3e-018 1.9e-018 -1.77e+000 -1.80e+000 1.5e+000 9.9e-001 1.00e-001
 9 1.0e-004 9.3e-018 0.0e+000 -1.77e+000 -1.78e+000 1.5e+000 1.0e+000 1.00e-001
10 1.0e-005 9.3e-018 0.0e+000 -1.77e+000 -1.77e+000 1.5e+000 1.0e+000 1.00e-001
11 1.0e-006 1.9e-017 1.9e-018 -1.77e+000 -1.77e+000 1.5e+000 1.0e+000 1.00e-001
12 1.0e-007 1.9e-017 0.0e+000 -1.77e+000 -1.77e+000 1.5e+000 1.0e+000 1.00e-001
13 1.0e-008 1.9e-017 1.9e-018 -1.77e+000 -1.77e+000 9.0e-001 9.0e-001 1.00e-001

phase.value  = pdFEAS    
   Iteration = 13
          mu = +1.0433131674147944e-008
relative gap = +1.4711380882028931e-007
        gap  = +2.6082829229778781e-007
     digits  = +6.8323465603589000e+000
objValPrimal = -1.7729693439634047e+000
objValDual   = -1.7729696047916970e+000
p.feas.error = +1.7763568394002505e-015
d.feas.error = +1.4210854715202004e-014
total time   = 0.068349
** Paramters **
maxIteration = 100
epsilonStar  = +9.9999999999999995e-008
lambdaStar   = +1.0000000000000000e+002
omegaStar    = +2.0000000000000000e+000
lowerBound   = -1.0000000000000000e+005
upperBound   = +1.0000000000000000e+005
betaStar     = +1.0000000000000001e-001
betaBar      = +2.0000000000000001e-001
gammaStar    = +9.0000000000000002e-001
epsilonDash  = +9.9999999999999995e-008
xPrint       = %+8.3e 
XPrint       = %+8.3e 
YPrint       = %+8.3e 
infPrint     = %+10.16e 

                         Time(sec)  Ratio(% : MainLoop) 
 Predictor time  =       0.016924,  25.519467
 Corrector time  =       0.010977,  16.552067
 Make bMat time  =       0.002992,  4.511596
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.002706,  4.080340
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.000000,  0.000000
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.035895,  54.125577
 solve           =       0.000000,  0.000000
 sumDz           =       0.002012,  3.033867
 makedX          =       0.000998,  1.504870
 symmetriseDx    =       0.019193,  28.940861
 makedXdZ        =       0.022203,  33.479598
 xMatTime        =       0.000998,  1.504870
 zMatTime        =       0.000997,  1.503363
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.017942,  27.054495
 EigzMatTime     =       0.017953,  27.071082
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000000,  0.000000
 EigTime         =       0.035895,  54.125577
 sub_total_bMat  =       0.063326,  95.488404
 Main Loop       =       0.066318,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.002031,  3.062517
 Total           =       0.068349,  103.062517

xVec = 
{+2.333e-002}
xMat = 
{
{ {+6.343e+000,-6.233e-001,+1.198e-001,+1.174e-002,-4.380e-001,+6.335e-001,+1.745e-001,+5.012e-001,-8.386e-002,+6.770e-001,+7.400e-001,-3.137e-002,-5.030e-001,+4.636e-002,-3.057e-001,-6.952e-001,+7.036e-001,+3.130e-001,+1.683e+000,+5.023e-001,+1.343e+000,-9.748e-001,+8.091e-001,+4.594e-001,-2.636e-001 },
  {-6.233e-001,+4.688e+000,+6.334e-001,+5.626e-001,+3.304e-001,-9.842e-001,-1.067e-001,-3.753e-001,+3.794e-001,+4.344e-001,-2.375e-001,+5.548e-001,+6.766e-002,-5.010e-001,+9.438e-001,+9.266e-001,+1.411e-001,-1.115e+000,+4.404e-001,+6.424e-001,+9.515e-001,-3.223e-001,-2.133e-001,-4.265e-001,-3.143e-001 },
  {+1.198e-001,+6.334e-001,+4.566e+000,+8.635e-001,+3.934e-003,-3.646e-001,-3.054e-001,+3.102e-001,-7.206e-001,+2.759e-001,-6.637e-001,+5.836e-001,+8.155e-001,+1.031e+000,-2.134e-001,-1.664e-001,-3.123e-001,+3.946e-001,+1.709e-001,+2.930e-001,-5.646e-001,+1.374e-001,+1.187e+000,+1.577e-001,-7.361e-003 },
  {+1.174e-002,+5.626e-001,+8.635e-001,+5.361e+000,+3.076e-001,+1.011e-001,+1.100e+000,+5.632e-002,-1.615e+000,-2.695e-001,+2.949e-001,-1.051e-001,+6.726e-001,+2.115e-002,+4.379e-001,+1.468e-001,+1.599e-001,-4.295e-002,-1.977e-001,+3.741e-001,+3.191e-001,+1.301e+000,-1.441e-002,-5.697e-001,+8.539e-001 },
  {-4.380e-001,+3.304e-001,+3.934e-003,+3.076e-001,+4.137e+000,-5.192e-001,-2.465e-001,+1.774e-001,-5.458e-001,-2.679e-001,+1.138e-001,+6.917e-001,-4.029e-001,-9.319e-001,+2.556e-001,+9.528e-001,-4.143e-002,+1.644e-001,-7.311e-001,-5.073e-001,-4.328e-001,+4.074e-001,+1.222e+000,+2.142e-001,-2.583e-001 },
  {+6.335e-001,-9.842e-001,-3.646e-001,+1.011e-001,-5.192e-001,+4.751e+000,+3.703e-001,-7.135e-001,+2.912e-001,-6.979e-001,+7.129e-001,+1.217e+000,-6.559e-001,+1.533e-001,-2.411e-001,+8.773e-002,+1.023e-001,+2.889e-002,+4.582e-001,+4.777e-001,+7.057e-001,+2.739e-001,+4.153e-001,-9.601e-001,-3.853e-001 },
  {+1.745e-001,-1.067e-001,-3.054e-001,+1.100e+000,-2.465e-001,+3.703e-001,+7.132e+000,+6.986e-001,+1.599e-001,+3.424e-001,+4.798e-001,-4.015e-001,+8.121e-001,-4.008e-001,+8.873e-001,-5.752e-001,-9.667e-002,-1.328e-001,+3.249e-001,+1.327e+000,-1.342e+000,+5.850e-001,+3.495e-001,-5.303e-001,+4.460e-001 },
  {+5.012e-001,-3.753e-001,+3.102e-001,+5.632e-002,+1.774e-001,-7.135e-001,+6.986e-001,+4.807e+000,-2.991e-001,-5.932e-001,+9.321e-001,+1.076e-001,+3.761e-001,+2.805e-001,-2.008e-001,-5.491e-001,+7.659e-001,-3.754e-002,+6.082e-001,-1.268e+000,+3.296e-001,+2.941e-002,+7.197e-001,+7.922e-001,+4.363e-001 },
  {-8.386e-002,+3.794e-001,-7.206e-001,-1.615e+000,-5.458e-001,+2.912e-001,+1.599e-001,-2.991e-001,+5.818e+000,+3.724e-001,-8.372e-001,+1.737e-001,+1.725e-001,+5.795e-001,-5.849e-001,-4.629e-001,+1.103e+000,+6.269e-001,+2.898e-001,+6.035e-001,-2.265e-001,+3.595e-001,+1.373e-001,+3.812e-001,+3.094e-001 },
  {+6.770e-001,+4.344e-001,+2.759e-001,-2.695e-001,-2.679e-001,-6.979e-001,+3.424e-001,-5.932e-001,+3.724e-001,+6.127e+000,-3.298e-001,-2.267e-002,+8.505e-001,+1.353e+000,+5.479e-001,+7.298e-002,-1.182e+000,+1.021e+000,-2.597e-001,-4.084e-001,-5.132e-001,+8.629e-001,+2.129e-001,-1.482e+000,+3.498e-001 },
  {+7.400e-001,-2.375e-001,-6.637e-001,+2.949e-001,+1.138e-001,+7.129e-001,+4.798e-001,+9.321e-001,-8.372e-001,-3.298e-001,+4.793e+000,-1.014e+000,-5.214e-001,-3.884e-001,+3.787e-001,+4.297e-001,+2.295e-001,+3.176e-001,+8.982e-001,+9.098e-001,+6.161e-001,+2.571e-001,-7.714e-001,+4.909e-001,-1.214e+000 },
  {-3.137e-002,+5.548e-001,+5.836e-001,-1.051e-001,+6.917e-001,+1.217e+000,-4.015e-001,+1.076e-001,+1.737e-001,-2.267e-002,-1.014e+000,+5.665e+000,+3.012e-001,-1.371e+000,-4.626e-002,+3.380e-001,+1.895e-002,-1.241e-001,+1.366e-001,+8.814e-001,+4.399e-002,-6.356e-001,+1.073e+000,+9.691e-001,+5.711e-001 },
  {-5.030e-001,+6.766e-002,+8.155e-001,+6.726e-001,-4.029e-001,-6.559e-001,+8.121e-001,+3.761e-001,+1.725e-001,+8.505e-001,-5.214e-001,+3.012e-001,+5.599e+000,+1.332e+000,+7.361e-001,+9.051e-001,-2.991e-001,+1.232e+000,+1.076e+000,-1.532e-001,+3.433e-001,-2.701e-001,+3.421e-002,+2.007e-001,+1.532e+000 },
  {+4.636e-002,-5.010e-001,+1.031e+000,+2.115e-002,-9.319e-001,+1.533e-001,-4.008e-001,+2.805e-001,+5.795e-001,+1.353e+000,-3.884e-001,-1.371e+000,+1.332e+000,+5.074e+000,-2.232e-001,-2.483e-001,-1.443e+000,-3.831e-001,-3.887e-002,+1.994e-001,+9.394e-001,-1.704e-001,-8.157e-001,+6.010e-001,+3.247e-001 },
  {-3.057e-001,+9.438e-001,-2.134e-001,+4.379e-001,+2.556e-001,-2.411e-001,+8.873e-001,-2.008e-001,-5.849e-001,+5.479e-001,+3.787e-001,-4.626e-002,+7.361e-001,-2.232e-001,+5.629e+000,+4.910e-001,-3.247e-001,+3.452e-001,+6.965e-001,+4.657e-001,-4.608e-001,+3.003e-001,+2.438e-002,+1.009e+000,+1.046e+000 },
  {-6.952e-001,+9.266e-001,-1.664e-001,+1.468e-001,+9.528e-001,+8.773e-002,-5.752e-001,-5.491e-001,-4.629e-001,+7.298e-002,+4.297e-001,+3.380e-001,+9.051e-001,-2.483e-001,+4.910e-001,+5.856e+000,-2.629e-001,+9.454e-001,+5.533e-001,-5.837e-002,+5.847e-001,-1.465e-001,-4.186e-001,+9.044e-002,+7.543e-001 },
  {+7.036e-001,+1.411e-001,-3.123e-001,+1.599e-001,-4.143e-002,+1.023e-001,-9.667e-002,+7.659e-001,+1.103e+000,-1.182e+000,+2.295e-001,+1.895e-002,-2.991e-001,-1.443e+000,-3.247e-001,-2.629e-001,+4.525e+000,+4.007e-001,+3.177e-001,-6.348e-001,-4.667e-001,+1.502e+000,+7.896e-002,+1.233e+000,-3.087e-001 },
  {+3.130e-001,-1.115e+000,+3.946e-001,-4.295e-002,+1.644e-001,+2.889e-002,-1.328e-001,-3.754e-002,+6.269e-001,+1.021e+000,+3.176e-001,-1.241e-001,+1.232e+000,-3.831e-001,+3.452e-001,+9.454e-001,+4.007e-001,+4.465e+000,+1.323e+000,-1.058e+000,-8.116e-004,+3.785e-001,+5.091e-001,+5.147e-002,+9.632e-001 },
  {+1.683e+000,+4.404e-001,+1.709e-001,-1.977e-001,-7.311e-001,+4.582e-001,+3.249e-001,+6.082e-001,+2.898e-001,-2.597e-001,+8.982e-001,+1.366e-001,+1.076e+000,-3.887e-002,+6.965e-001,+5.533e-001,+3.177e-001,+1.323e+000,+5.167e+000,+1.299e+000,+4.367e-001,-4.078e-001,-2.233e-001,+5.841e-001,-7.529e-001 },
  {+5.023e-001,+6.424e-001,+2.930e-001,+3.741e-001,-5.073e-001,+4.777e-001,+1.327e+000,-1.268e+000,+6.035e-001,-4.084e-001,+9.098e-001,+8.814e-001,-1.532e-001,+1.994e-001,+4.657e-001,-5.837e-002,-6.348e-001,-1.058e+000,+1.299e+000,+4.401e+000,+8.949e-001,+9.875e-002,+3.361e-001,-1.946e-003,+1.118e+000 },
  {+1.343e+000,+9.515e-001,-5.646e-001,+3.191e-001,-4.328e-001,+7.057e-001,-1.342e+000,+3.296e-001,-2.265e-001,-5.132e-001,+6.161e-001,+4.399e-002,+3.433e-001,+9.394e-001,-4.608e-001,+5.847e-001,-4.667e-001,-8.116e-004,+4.367e-001,+8.949e-001,+5.958e+000,+5.417e-001,-2.506e-001,+2.036e-001,-1.286e-001 },
  {-9.748e-001,-3.223e-001,+1.374e-001,+1.301e+000,+4.074e-001,+2.739e-001,+5.850e-001,+2.941e-002,+3.595e-001,+8.629e-001,+2.571e-001,-6.356e-001,-2.701e-001,-1.704e-001,+3.003e-001,-1.465e-001,+1.502e+000,+3.785e-001,-4.078e-001,+9.875e-002,+5.417e-001,+4.947e+000,-2.364e-001,+3.946e-002,+7.060e-001 },
  {+8.091e-001,-2.133e-001,+1.187e+000,-1.441e-002,+1.222e+000,+4.153e-001,+3.495e-001,+7.197e-001,+1.373e-001,+2.129e-001,-7.714e-001,+1.073e+000,+3.421e-002,-8.157e-001,+2.438e-002,-4.186e-001,+7.896e-002,+5.091e-001,-2.233e-001,+3.361e-001,-2.506e-001,-2.364e-001,+6.770e+000,+1.110e-001,-7.780e-001 },
  {+4.594e-001,-4.265e-001,+1.577e-001,-5.697e-001,+2.142e-001,-9.601e-001,-5.303e-001,+7.922e-001,+3.812e-001,-1.482e+000,+4.909e-001,+9.691e-001,+2.007e-001,+6.010e-001,+1.009e+000,+9.044e-002,+1.233e+000,+5.147e-002,+5.841e-001,-1.946e-003,+2.036e-001,+3.946e-002,+1.110e-001,+5.452e+000,+3.763e-002 },
  {-2.636e-001,-3.143e-001,-7.361e-003,+8.539e-001,-2.583e-001,-3.853e-001,+4.460e-001,+4.363e-001,+3.094e-001,+3.498e-001,-1.214e+000,+5.711e-001,+1.532e+000,+3.247e-001,+1.046e+000,+7.543e-001,-3.087e-001,+9.632e-001,-7.529e-001,+1.118e+000,-1.286e-001,+7.060e-001,-7.780e-001,+3.763e-002,+5.196e+000 }   }
}
yMat = 
{
{ {+1.576e-002,+2.197e-002,-1.898e-002,+1.761e-003,-1.600e-003,+2.796e-002,-1.953e-002,+4.982e-002,-1.277e-002,+1.088e-003,-4.344e-002,-2.181e-002,+2.101e-002,-1.415e-002,-7.066e-004,+4.355e-003,-1.610e-002,+4.475e-002,-4.434e-002,+7.032e-002,-2.680e-002,+1.126e-002,-2.087e-002,+1.646e-002,-4.781e-002 },
  {+2.197e-002,+3.062e-002,-2.646e-002,+2.454e-003,-2.230e-003,+3.897e-002,-2.722e-002,+6.943e-002,-1.780e-002,+1.516e-003,-6.055e-002,-3.040e-002,+2.929e-002,-1.973e-002,-9.849e-004,+6.070e-003,-2.244e-002,+6.237e-002,-6.180e-002,+9.802e-002,-3.736e-002,+1.569e-002,-2.910e-002,+2.295e-002,-6.664e-002 },
  {-1.898e-002,-2.646e-002,+2.286e-002,-2.121e-003,+1.927e-003,-3.367e-002,+2.352e-002,-6.000e-002,+1.538e-002,-1.310e-003,+5.232e-002,+2.627e-002,-2.531e-002,+1.704e-002,+8.510e-004,-5.245e-003,+1.939e-002,-5.389e-002,+5.340e-002,-8.469e-002,+3.228e-002,-1.356e-002,+2.514e-002,-1.983e-002,+5.758e-002 },
  {+1.761e-003,+2.454e-003,-2.121e-003,+1.967e-004,-1.787e-004,+3.123e-003,-2.181e-003,+5.564e-003,-1.426e-003,+1.215e-004,-4.853e-003,-2.436e-003,+2.347e-003,-1.581e-003,-7.893e-005,+4.864e-004,-1.799e-003,+4.998e-003,-4.953e-003,+7.855e-003,-2.994e-003,+1.258e-003,-2.332e-003,+1.839e-003,-5.340e-003 },
  {-1.600e-003,-2.230e-003,+1.927e-003,-1.787e-004,+1.624e-004,-2.838e-003,+1.982e-003,-5.057e-003,+1.296e-003,-1.104e-004,+4.410e-003,+2.214e-003,-2.133e-003,+1.437e-003,+7.173e-005,-4.421e-004,+1.634e-003,-4.542e-003,+4.501e-003,-7.138e-003,+2.721e-003,-1.143e-003,+2.119e-003,-1.671e-003,+4.853e-003 },
  {+2.796e-002,+3.897e-002,-3.367e-002,+3.123e-003,-2.838e-003,+4.959e-002,-3.464e-002,+8.836e-002,-2.265e-002,+1.930e-003,-7.706e-002,-3.869e-002,+3.727e-002,-2.510e-002,-1.253e-003,+7.725e-003,-2.856e-002,+7.937e-002,-7.865e-002,+1.247e-001,-4.754e-002,+1.997e-002,-3.703e-002,+2.920e-002,-8.480e-002 },
  {-1.953e-002,-2.722e-002,+2.352e-002,-2.181e-003,+1.982e-003,-3.464e-002,+2.419e-002,-6.172e-002,+1.582e-002,-1.348e-003,+5.382e-002,+2.702e-002,-2.603e-002,+1.753e-002,+8.754e-004,-5.395e-003,+1.995e-002,-5.544e-002,+5.493e-002,-8.712e-002,+3.321e-002,-1.395e-002,+2.586e-002,-2.040e-002,+5.923e-002 },
  {+4.982e-002,+6.943e-002,-6.000e-002,+5.564e-003,-5.057e-003,+8.836e-002,-6.172e-002,+1.574e-001,-4.035e-002,+3.438e-003,-1.373e-001,-6.893e-002,+6.640e-002,-4.473e-002,-2.233e-003,+1.376e-002,-5.089e-002,+1.414e-001,-1.401e-001,+2.222e-001,-8.471e-002,+3.559e-002,-6.597e-002,+5.203e-002,-1.511e-001 },
  {-1.277e-002,-1.780e-002,+1.538e-002,-1.426e-003,+1.296e-003,-2.265e-002,+1.582e-002,-4.035e-002,+1.034e-002,-8.812e-004,+3.519e-002,+1.766e-002,-1.702e-002,+1.146e-002,+5.723e-004,-3.527e-003,+1.304e-002,-3.624e-002,+3.591e-002,-5.696e-002,+2.171e-002,-9.120e-003,+1.691e-002,-1.333e-002,+3.872e-002 },
  {+1.088e-003,+1.516e-003,-1.310e-003,+1.215e-004,-1.104e-004,+1.930e-003,-1.348e-003,+3.438e-003,-8.812e-004,+7.510e-005,-2.999e-003,-1.505e-003,+1.450e-003,-9.768e-004,-4.877e-005,+3.006e-004,-1.111e-003,+3.089e-003,-3.061e-003,+4.854e-003,-1.850e-003,+7.772e-004,-1.441e-003,+1.136e-003,-3.300e-003 },
  {-4.344e-002,-6.055e-002,+5.232e-002,-4.853e-003,+4.410e-003,-7.706e-002,+5.382e-002,-1.373e-001,+3.519e-002,-2.999e-003,+1.197e-001,+6.011e-002,-5.791e-002,+3.900e-002,+1.947e-003,-1.200e-002,+4.438e-002,-1.233e-001,+1.222e-001,-1.938e-001,+7.387e-002,-3.103e-002,+5.753e-002,-4.537e-002,+1.318e-001 },
  {-2.181e-002,-3.040e-002,+2.627e-002,-2.436e-003,+2.214e-003,-3.869e-002,+2.702e-002,-6.893e-002,+1.766e-002,-1.505e-003,+6.011e-002,+3.018e-002,-2.907e-002,+1.958e-002,+9.777e-004,-6.026e-003,+2.228e-002,-6.191e-002,+6.135e-002,-9.730e-002,+3.709e-002,-1.558e-002,+2.888e-002,-2.278e-002,+6.615e-002 },
  {+2.101e-002,+2.929e-002,-2.531e-002,+2.347e-003,-2.133e-003,+3.727e-002,-2.603e-002,+6.640e-002,-1.702e-002,+1.450e-003,-5.791e-002,-2.907e-002,+2.801e-002,-1.886e-002,-9.419e-004,+5.805e-003,-2.146e-002,+5.964e-002,-5.910e-002,+9.373e-002,-3.573e-002,+1.501e-002,-2.782e-002,+2.194e-002,-6.373e-002 },
  {-1.415e-002,-1.973e-002,+1.704e-002,-1.581e-003,+1.437e-003,-2.510e-002,+1.753e-002,-4.473e-002,+1.146e-002,-9.768e-004,+3.900e-002,+1.958e-002,-1.886e-002,+1.271e-002,+6.344e-004,-3.910e-003,+1.446e-002,-4.017e-002,+3.981e-002,-6.314e-002,+2.406e-002,-1.011e-002,+1.874e-002,-1.478e-002,+4.292e-002 },
  {-7.066e-004,-9.849e-004,+8.510e-004,-7.893e-005,+7.173e-005,-1.253e-003,+8.754e-004,-2.233e-003,+5.723e-004,-4.877e-005,+1.947e-003,+9.777e-004,-9.419e-004,+6.344e-004,+3.168e-005,-1.952e-004,+7.218e-004,-2.006e-003,+1.988e-003,-3.152e-003,+1.202e-003,-5.048e-004,+9.358e-004,-7.380e-004,+2.143e-003 },
  {+4.355e-003,+6.070e-003,-5.245e-003,+4.864e-004,-4.421e-004,+7.725e-003,-5.395e-003,+1.376e-002,-3.527e-003,+3.006e-004,-1.200e-002,-6.026e-003,+5.805e-003,-3.910e-003,-1.952e-004,+1.203e-003,-4.449e-003,+1.236e-002,-1.225e-002,+1.943e-002,-7.405e-003,+3.111e-003,-5.767e-003,+4.548e-003,-1.321e-002 },
  {-1.610e-002,-2.244e-002,+1.939e-002,-1.799e-003,+1.634e-003,-2.856e-002,+1.995e-002,-5.089e-002,+1.304e-002,-1.111e-003,+4.438e-002,+2.228e-002,-2.146e-002,+1.446e-002,+7.218e-004,-4.449e-003,+1.645e-002,-4.571e-002,+4.530e-002,-7.184e-002,+2.738e-002,-1.150e-002,+2.132e-002,-1.682e-002,+4.884e-002 },
  {+4.475e-002,+6.237e-002,-5.389e-002,+4.998e-003,-4.542e-003,+7.937e-002,-5.544e-002,+1.414e-001,-3.624e-002,+3.089e-003,-1.233e-001,-6.191e-002,+5.964e-002,-4.017e-002,-2.006e-003,+1.236e-002,-4.571e-002,+1.270e-001,-1.259e-001,+1.996e-001,-7.609e-002,+3.196e-002,-5.926e-002,+4.673e-002,-1.357e-001 },
  {-4.434e-002,-6.180e-002,+5.340e-002,-4.953e-003,+4.501e-003,-7.865e-002,+5.493e-002,-1.401e-001,+3.591e-002,-3.061e-003,+1.222e-001,+6.135e-002,-5.910e-002,+3.981e-002,+1.988e-003,-1.225e-002,+4.530e-002,-1.259e-001,+1.247e-001,-1.978e-001,+7.540e-002,-3.168e-002,+5.872e-002,-4.631e-002,+1.345e-001 },
  {+7.032e-002,+9.802e-002,-8.469e-002,+7.855e-003,-7.138e-003,+1.247e-001,-8.712e-002,+2.222e-001,-5.696e-002,+4.854e-003,-1.938e-001,-9.730e-002,+9.373e-002,-6.314e-002,-3.152e-003,+1.943e-002,-7.184e-002,+1.996e-001,-1.978e-001,+3.137e-001,-1.196e-001,+5.023e-002,-9.313e-002,+7.344e-002,-2.133e-001 },
  {-2.680e-002,-3.736e-002,+3.228e-002,-2.994e-003,+2.721e-003,-4.754e-002,+3.321e-002,-8.471e-002,+2.171e-002,-1.850e-003,+7.387e-002,+3.709e-002,-3.573e-002,+2.406e-002,+1.202e-003,-7.405e-003,+2.738e-002,-7.609e-002,+7.540e-002,-1.196e-001,+4.558e-002,-1.915e-002,+3.550e-002,-2.799e-002,+8.130e-002 },
  {+1.126e-002,+1.569e-002,-1.356e-002,+1.258e-003,-1.143e-003,+1.997e-002,-1.395e-002,+3.559e-002,-9.120e-003,+7.772e-004,-3.103e-002,-1.558e-002,+1.501e-002,-1.011e-002,-5.048e-004,+3.111e-003,-1.150e-002,+3.196e-002,-3.168e-002,+5.023e-002,-1.915e-002,+8.044e-003,-1.491e-002,+1.176e-002,-3.415e-002 },
  {-2.087e-002,-2.910e-002,+2.514e-002,-2.332e-003,+2.119e-003,-3.703e-002,+2.586e-002,-6.597e-002,+1.691e-002,-1.441e-003,+5.753e-002,+2.888e-002,-2.782e-002,+1.874e-002,+9.358e-004,-5.767e-003,+2.132e-002,-5.926e-002,+5.872e-002,-9.313e-002,+3.550e-002,-1.491e-002,+2.764e-002,-2.180e-002,+6.331e-002 },
  {+1.646e-002,+2.295e-002,-1.983e-002,+1.839e-003,-1.671e-003,+2.920e-002,-2.040e-002,+5.203e-002,-1.333e-002,+1.136e-003,-4.537e-002,-2.278e-002,+2.194e-002,-1.478e-002,-7.380e-004,+4.548e-003,-1.682e-002,+4.673e-002,-4.631e-002,+7.344e-002,-2.799e-002,+1.176e-002,-2.180e-002,+1.719e-002,-4.993e-002 },
  {-4.781e-002,-6.664e-002,+5.758e-002,-5.340e-003,+4.853e-003,-8.480e-002,+5.923e-002,-1.511e-001,+3.872e-002,-3.300e-003,+1.318e-001,+6.615e-002,-6.373e-002,+4.292e-002,+2.143e-003,-1.321e-002,+4.884e-002,-1.357e-001,+1.345e-001,-2.133e-001,+8.130e-002,-3.415e-002,+6.331e-002,-4.993e-002,+1.450e-001 }   }
}
    main loop time = 0.066318
        total time = 0.068349
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.002031
SDPA end at [Thu Jul 15 21:27:25 2021]
ALL TIME = 0.069709
