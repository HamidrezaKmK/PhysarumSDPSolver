SDPA start at [Thu Jul 15 21:27:26 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset3\dense25negative-definite17.dat-s  : sparse
"Dense tests with negative definite C matrices matrices have dimension 25 * 25 and 1-10 constraints"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset3\dense25negative-definite17.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -1.42e+004 9.0e-001 1.0e+000 2.00e-001
 1 1.9e+003 9.6e-002 4.5e-016 +5.18e+000 -1.77e+004 1.0e+000 1.6e+000 2.00e-001
 2 3.0e+002 1.9e-017 5.0e-016 +2.10e+000 -7.58e+003 9.0e+001 9.7e-001 1.00e-001
 3 3.8e+001 1.9e-017 4.7e-016 -2.34e+000 -9.54e+002 9.8e-001 9.8e-001 1.00e-001
 4 4.4e+000 1.9e-017 4.8e-017 -2.16e+000 -1.13e+002 1.6e+000 9.1e-001 1.00e-001
 5 7.8e-001 2.8e-017 1.4e-017 -4.46e+000 -2.38e+001 1.9e+000 7.7e-001 1.00e-001
 6 2.3e-001 2.8e-017 8.2e-018 -4.97e+000 -1.07e+001 2.0e+000 9.6e-001 1.00e-001
 7 3.0e-002 2.8e-017 2.3e-018 -5.02e+000 -5.78e+000 1.8e+000 9.8e-001 1.00e-001
 8 3.6e-003 2.8e-017 9.3e-018 -5.03e+000 -5.12e+000 1.9e+000 9.9e-001 1.00e-001
 9 3.8e-004 2.8e-017 3.3e-017 -5.03e+000 -5.04e+000 2.0e+000 9.9e-001 1.00e-001
10 3.9e-005 2.8e-017 3.6e-017 -5.03e+000 -5.03e+000 1.9e+000 1.0e+000 1.00e-001
11 3.9e-006 2.8e-017 1.1e-016 -5.03e+000 -5.03e+000 1.9e+000 1.0e+000 1.00e-001
12 3.9e-007 2.8e-017 4.4e-016 -5.03e+000 -5.03e+000 1.9e+000 1.0e+000 1.00e-001
13 3.9e-008 2.8e-017 4.8e-016 -5.03e+000 -5.03e+000 9.0e-001 9.0e-001 1.00e-001

phase.value  = pdFEAS    
   Iteration = 13
          mu = +3.8865901501594638e-008
relative gap = +1.9312332000957475e-007
        gap  = +9.7164725687548525e-007
     digits  = +6.7141652811663386e+000
objValPrimal = -5.0312264878391719e+000
objValDual   = -5.0312274594864288e+000
p.feas.error = +2.6645352591003757e-015
d.feas.error = +5.8264504332328215e-012
total time   = 0.081261
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
 Predictor time  =       0.023161,  30.778329
 Corrector time  =       0.013969,  18.563208
 Make bMat time  =       0.010225,  13.587859
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.006985,  9.282269
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.006985,  9.282269
 Make rMat time  =       0.001997,  2.653785
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.001971,  2.619234
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.034903,  46.382108
 solve           =       0.000000,  0.000000
 sumDz           =       0.002007,  2.667074
 makedX          =       0.002988,  3.970711
 symmetriseDx    =       0.017942,  23.842873
 makedXdZ        =       0.022937,  30.480658
 xMatTime        =       0.000000,  0.000000
 zMatTime        =       0.000997,  1.324899
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.015954,  21.201047
 EigzMatTime     =       0.018949,  25.181061
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000000,  0.000000
 EigTime         =       0.034903,  46.382108
 sub_total_bMat  =       0.065026,  86.412141
 Main Loop       =       0.075251,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.006010,  7.986605
 Total           =       0.081261,  107.986605

xVec = 
{+3.246e-003,-1.063e-002,-6.729e-003,+2.395e-002,+1.644e-002,-1.453e-002,+3.575e-003}
xMat = 
{
{ {+4.296e+000,+1.184e-002,-6.792e-001,-3.925e-001,+7.630e-001,+3.795e-001,-3.079e-001,+8.895e-001,+7.448e-001,+6.031e-001,-7.917e-002,+3.882e-001,+7.656e-001,-2.836e-002,+8.821e-001,+5.480e-001,+1.866e+000,-4.171e-001,+1.095e+000,+4.972e-001,+2.105e-001,+1.198e+000,+3.778e-001,-1.347e+000,-1.558e-001 },
  {+1.184e-002,+6.610e+000,-3.478e-001,+2.577e-001,-5.349e-002,-1.416e-001,-1.785e-001,-4.536e-001,-1.452e+000,+3.169e-001,+9.426e-001,-1.158e+000,+3.458e-001,-1.280e+000,-9.613e-001,+5.212e-001,+9.645e-001,+3.075e-002,+7.503e-001,+2.665e-002,+5.129e-001,+7.158e-002,-1.301e+000,+1.453e+000,-5.536e-001 },
  {-6.792e-001,-3.478e-001,+5.419e+000,-8.260e-001,-4.201e-002,+4.326e-001,+3.226e-001,+5.630e-001,-4.255e-001,+6.376e-001,+2.483e-001,+8.108e-002,-3.369e-001,+9.070e-001,-5.340e-001,+2.901e-001,-9.438e-001,-3.968e-001,-8.415e-001,+5.185e-001,-9.598e-001,-1.153e+000,-4.866e-001,+6.538e-003,+5.403e-001 },
  {-3.925e-001,+2.577e-001,-8.260e-001,+3.687e+000,+1.525e-001,+1.213e+000,+8.195e-001,+5.517e-002,+6.415e-001,-9.437e-001,-1.073e+000,+3.280e-001,+4.025e-001,-1.680e-001,+2.724e-001,-1.412e+000,-4.979e-001,-6.401e-001,+9.901e-001,+5.153e-001,+2.475e-001,-9.472e-002,-6.579e-001,+2.282e-001,+3.038e-001 },
  {+7.630e-001,-5.349e-002,-4.201e-002,+1.525e-001,+4.311e+000,-4.841e-001,+1.536e+000,-3.921e-001,-2.348e-001,-5.050e-001,-4.365e-002,-4.429e-001,+8.118e-001,-1.841e-001,-4.955e-001,+3.999e-001,+7.446e-001,+6.583e-001,+6.266e-001,-1.872e-001,-3.593e-001,-3.477e-001,+3.598e-002,-7.200e-001,+1.478e+000 },
  {+3.795e-001,-1.416e-001,+4.326e-001,+1.213e+000,-4.841e-001,+4.925e+000,+6.179e-001,-1.071e+000,+5.972e-001,+9.017e-001,-5.536e-001,-5.327e-001,-2.074e-001,-1.981e-001,-3.334e-002,-1.501e+000,+2.029e-001,+2.823e-001,-3.894e-001,+3.094e-001,-4.088e-001,+8.659e-001,+3.389e-001,-4.989e-002,-1.293e-001 },
  {-3.079e-001,-1.785e-001,+3.226e-001,+8.195e-001,+1.536e+000,+6.179e-001,+5.275e+000,+1.088e-001,+1.134e+000,+4.726e-002,-4.783e-001,+1.324e+000,-1.560e-001,+6.656e-002,-5.537e-002,+2.708e-001,+3.303e-001,-4.119e-001,+1.919e-001,+4.250e-001,-5.574e-001,-1.301e+000,-5.113e-001,-7.665e-002,-6.233e-001 },
  {+8.895e-001,-4.536e-001,+5.630e-001,+5.517e-002,-3.921e-001,-1.071e+000,+1.088e-001,+6.132e+000,+5.204e-001,+2.104e+000,-4.685e-001,+4.497e-001,+7.769e-001,-7.031e-001,-9.468e-001,+1.291e+000,-6.207e-002,-1.304e+000,+4.328e-001,-4.897e-002,-4.131e-001,-2.505e-001,+3.969e-001,-1.083e+000,+2.062e-001 },
  {+7.448e-001,-1.452e+000,-4.255e-001,+6.415e-001,-2.348e-001,+5.972e-001,+1.134e+000,+5.204e-001,+5.388e+000,-5.702e-001,-4.623e-001,+1.093e-001,+1.315e+000,+4.394e-001,-2.775e-001,-1.974e-001,+9.732e-001,+1.793e-001,+6.798e-003,-7.974e-001,+8.163e-001,+1.657e-001,+3.759e-001,-8.757e-002,-2.712e-001 },
  {+6.031e-001,+3.169e-001,+6.376e-001,-9.437e-001,-5.050e-001,+9.017e-001,+4.726e-002,+2.104e+000,-5.702e-001,+4.942e+000,+1.062e+000,+7.463e-001,+1.029e+000,-4.171e-001,-5.097e-001,-3.840e-001,+5.497e-002,+6.817e-001,-1.037e+000,+4.156e-001,-5.318e-001,+7.344e-001,-5.259e-001,-8.765e-001,+3.758e-001 },
  {-7.917e-002,+9.426e-001,+2.483e-001,-1.073e+000,-4.365e-002,-5.536e-001,-4.783e-001,-4.685e-001,-4.623e-001,+1.062e+000,+5.696e+000,-6.875e-001,+1.075e-001,-1.539e-001,-3.430e-001,-3.285e-001,-1.375e+000,-9.231e-001,+1.415e+000,-1.248e+000,+3.669e-001,+1.938e-001,-5.884e-001,+1.238e+000,-1.228e-001 },
  {+3.882e-001,-1.158e+000,+8.108e-002,+3.280e-001,-4.429e-001,-5.327e-001,+1.324e+000,+4.497e-001,+1.093e-001,+7.463e-001,-6.875e-001,+5.377e+000,-3.887e-001,+5.305e-001,+8.797e-002,-5.367e-001,+1.081e-001,+1.516e-001,+2.658e-002,-4.654e-002,+3.693e-001,+9.952e-001,+6.798e-001,-7.346e-003,-2.478e-002 },
  {+7.656e-001,+3.458e-001,-3.369e-001,+4.025e-001,+8.118e-001,-2.074e-001,-1.560e-001,+7.769e-001,+1.315e+000,+1.029e+000,+1.075e-001,-3.887e-001,+5.459e+000,-3.768e-001,+1.639e-001,-3.200e-001,-8.897e-001,-4.201e-002,-9.620e-001,-4.026e-001,+4.166e-001,+4.809e-001,+1.601e+000,+2.401e-001,-3.778e-001 },
  {-2.836e-002,-1.280e+000,+9.070e-001,-1.680e-001,-1.841e-001,-1.981e-001,+6.656e-002,-7.031e-001,+4.394e-001,-4.171e-001,-1.539e-001,+5.305e-001,-3.768e-001,+4.874e+000,-5.848e-001,+5.037e-001,+1.112e+000,+5.165e-001,-9.006e-002,-4.194e-003,+7.608e-001,+1.238e+000,-4.796e-001,+3.267e-002,+1.237e+000 },
  {+8.821e-001,-9.613e-001,-5.340e-001,+2.724e-001,-4.955e-001,-3.334e-002,-5.537e-002,-9.468e-001,-2.775e-001,-5.097e-001,-3.430e-001,+8.797e-002,+1.639e-001,-5.848e-001,+6.702e+000,-3.294e-001,-6.602e-001,+6.804e-002,-9.175e-001,+1.078e+000,-2.924e-001,+5.982e-001,+5.907e-001,-6.522e-001,-3.386e-001 },
  {+5.480e-001,+5.212e-001,+2.901e-001,-1.412e+000,+3.999e-001,-1.501e+000,+2.708e-001,+1.291e+000,-1.974e-001,-3.840e-001,-3.285e-001,-5.367e-001,-3.200e-001,+5.037e-001,-3.294e-001,+5.445e+000,+8.185e-001,+2.623e-001,-1.904e-001,+2.247e-001,+6.545e-001,-9.446e-001,+3.003e-001,+1.752e-001,-2.016e-001 },
  {+1.866e+000,+9.645e-001,-9.438e-001,-4.979e-001,+7.446e-001,+2.029e-001,+3.303e-001,-6.207e-002,+9.732e-001,+5.497e-002,-1.375e+000,+1.081e-001,-8.897e-001,+1.112e+000,-6.602e-001,+8.185e-001,+4.258e+000,+2.162e-001,+5.281e-001,+5.107e-001,-4.838e-001,-3.273e-001,-6.034e-001,-3.747e-001,+3.528e-001 },
  {-4.171e-001,+3.075e-002,-3.968e-001,-6.401e-001,+6.583e-001,+2.823e-001,-4.119e-001,-1.304e+000,+1.793e-001,+6.817e-001,-9.231e-001,+1.516e-001,-4.201e-002,+5.165e-001,+6.804e-002,+2.623e-001,+2.162e-001,+6.241e+000,+7.423e-001,+3.974e-001,+8.437e-001,+9.526e-001,-3.557e-001,+6.888e-001,-7.658e-002 },
  {+1.095e+000,+7.503e-001,-8.415e-001,+9.901e-001,+6.266e-001,-3.894e-001,+1.919e-001,+4.328e-001,+6.798e-003,-1.037e+000,+1.415e+000,+2.658e-002,-9.620e-001,-9.006e-002,-9.175e-001,-1.904e-001,+5.281e-001,+7.423e-001,+5.752e+000,-8.373e-001,-2.997e-001,-1.953e-001,-8.203e-001,+1.316e+000,-1.441e-002 },
  {+4.972e-001,+2.665e-002,+5.185e-001,+5.153e-001,-1.872e-001,+3.094e-001,+4.250e-001,-4.897e-002,-7.974e-001,+4.156e-001,-1.248e+000,-4.654e-002,-4.026e-001,-4.194e-003,+1.078e+000,+2.247e-001,+5.107e-001,+3.974e-001,-8.373e-001,+6.235e+000,+1.824e+000,-4.243e-001,-8.085e-001,+8.248e-001,+2.216e-002 },
  {+2.105e-001,+5.129e-001,-9.598e-001,+2.475e-001,-3.593e-001,-4.088e-001,-5.574e-001,-4.131e-001,+8.163e-001,-5.318e-001,+3.669e-001,+3.693e-001,+4.166e-001,+7.608e-001,-2.924e-001,+6.545e-001,-4.838e-001,+8.437e-001,-2.997e-001,+1.824e+000,+5.718e+000,-6.368e-001,+2.969e-001,+9.814e-001,-1.260e-001 },
  {+1.198e+000,+7.158e-002,-1.153e+000,-9.472e-002,-3.477e-001,+8.659e-001,-1.301e+000,-2.505e-001,+1.657e-001,+7.344e-001,+1.938e-001,+9.952e-001,+4.809e-001,+1.238e+000,+5.982e-001,-9.446e-001,-3.273e-001,+9.526e-001,-1.953e-001,-4.243e-001,-6.368e-001,+6.044e+000,+1.063e-001,-1.169e-001,-8.321e-001 },
  {+3.778e-001,-1.301e+000,-4.866e-001,-6.579e-001,+3.598e-002,+3.389e-001,-5.113e-001,+3.969e-001,+3.759e-001,-5.259e-001,-5.884e-001,+6.798e-001,+1.601e+000,-4.796e-001,+5.907e-001,+3.003e-001,-6.034e-001,-3.557e-001,-8.203e-001,-8.085e-001,+2.969e-001,+1.063e-001,+6.689e+000,+1.382e+000,+2.747e-001 },
  {-1.347e+000,+1.453e+000,+6.538e-003,+2.282e-001,-7.200e-001,-4.989e-002,-7.665e-002,-1.083e+000,-8.757e-002,-8.765e-001,+1.238e+000,-7.346e-003,+2.401e-001,+3.267e-002,-6.522e-001,+1.752e-001,-3.747e-001,+6.888e-001,+1.316e+000,+8.248e-001,+9.814e-001,-1.169e-001,+1.382e+000,+5.850e+000,+4.644e-001 },
  {-1.558e-001,-5.536e-001,+5.403e-001,+3.038e-001,+1.478e+000,-1.293e-001,-6.233e-001,+2.062e-001,-2.712e-001,+3.758e-001,-1.228e-001,-2.478e-002,-3.778e-001,+1.237e+000,-3.386e-001,-2.016e-001,+3.528e-001,-7.658e-002,-1.441e-002,+2.216e-002,-1.260e-001,-8.321e-001,+2.747e-001,+4.644e-001,+5.642e+000 }   }
}
yMat = 
{
{ {+3.999e-002,+7.363e-002,-7.866e-002,-5.879e-002,+1.127e-001,+4.444e-002,-9.033e-002,+1.566e-002,+8.344e-002,+3.874e-002,-4.683e-002,+5.070e-002,-5.994e-002,+1.156e-001,+1.175e-002,-1.016e-002,-1.583e-001,-2.640e-002,-1.000e-002,+3.008e-002,-7.146e-002,-9.596e-002,-1.316e-002,+3.843e-002,-5.726e-002 },
  {+7.363e-002,+1.356e-001,-1.448e-001,-1.083e-001,+2.074e-001,+8.182e-002,-1.663e-001,+2.883e-002,+1.536e-001,+7.133e-002,-8.624e-002,+9.335e-002,-1.104e-001,+2.129e-001,+2.164e-002,-1.871e-002,-2.914e-001,-4.860e-002,-1.842e-002,+5.539e-002,-1.316e-001,-1.767e-001,-2.423e-002,+7.077e-002,-1.054e-001 },
  {-7.866e-002,-1.448e-001,+1.547e-001,+1.157e-001,-2.216e-001,-8.742e-002,+1.777e-001,-3.080e-002,-1.642e-001,-7.621e-002,+9.213e-002,-9.973e-002,+1.179e-001,-2.274e-001,-2.312e-002,+1.999e-002,+3.114e-001,+5.193e-002,+1.968e-002,-5.918e-002,+1.406e-001,+1.888e-001,+2.588e-002,-7.561e-002,+1.126e-001 },
  {-5.879e-002,-1.083e-001,+1.157e-001,+8.645e-002,-1.656e-001,-6.534e-002,+1.328e-001,-2.302e-002,-1.227e-001,-5.696e-002,+6.886e-002,-7.454e-002,+8.813e-002,-1.700e-001,-1.728e-002,+1.494e-002,+2.327e-001,+3.881e-002,+1.471e-002,-4.423e-002,+1.051e-001,+1.411e-001,+1.935e-002,-5.651e-002,+8.420e-002 },
  {+1.127e-001,+2.074e-001,-2.216e-001,-1.656e-001,+3.174e-001,+1.252e-001,-2.545e-001,+4.412e-002,+2.351e-001,+1.091e-001,-1.319e-001,+1.428e-001,-1.689e-001,+3.257e-001,+3.311e-002,-2.863e-002,-4.459e-001,-7.436e-002,-2.818e-002,+8.475e-002,-2.013e-001,-2.704e-001,-3.707e-002,+1.083e-001,-1.613e-001 },
  {+4.444e-002,+8.182e-002,-8.742e-002,-6.534e-002,+1.252e-001,+4.939e-002,-1.004e-001,+1.740e-002,+9.273e-002,+4.305e-002,-5.205e-002,+5.634e-002,-6.661e-002,+1.285e-001,+1.306e-002,-1.129e-002,-1.759e-001,-2.933e-002,-1.112e-002,+3.343e-002,-7.942e-002,-1.066e-001,-1.462e-002,+4.271e-002,-6.364e-002 },
  {-9.033e-002,-1.663e-001,+1.777e-001,+1.328e-001,-2.545e-001,-1.004e-001,+2.040e-001,-3.537e-002,-1.885e-001,-8.751e-002,+1.058e-001,-1.145e-001,+1.354e-001,-2.611e-001,-2.655e-002,+2.295e-002,+3.575e-001,+5.963e-002,+2.260e-002,-6.795e-002,+1.614e-001,+2.168e-001,+2.972e-002,-8.682e-002,+1.293e-001 },
  {+1.566e-002,+2.883e-002,-3.080e-002,-2.302e-002,+4.412e-002,+1.740e-002,-3.537e-002,+6.132e-003,+3.268e-002,+1.517e-002,-1.834e-002,+1.985e-002,-2.347e-002,+4.527e-002,+4.602e-003,-3.979e-003,-6.198e-002,-1.034e-002,-3.918e-003,+1.178e-002,-2.799e-002,-3.758e-002,-5.153e-003,+1.505e-002,-2.242e-002 },
  {+8.344e-002,+1.536e-001,-1.642e-001,-1.227e-001,+2.351e-001,+9.273e-002,-1.885e-001,+3.268e-002,+1.741e-001,+8.084e-002,-9.773e-002,+1.058e-001,-1.251e-001,+2.412e-001,+2.452e-002,-2.121e-002,-3.303e-001,-5.508e-002,-2.088e-002,+6.277e-002,-1.491e-001,-2.003e-001,-2.746e-002,+8.020e-002,-1.195e-001 },
  {+3.874e-002,+7.133e-002,-7.621e-002,-5.696e-002,+1.091e-001,+4.305e-002,-8.751e-002,+1.517e-002,+8.084e-002,+3.753e-002,-4.537e-002,+4.912e-002,-5.807e-002,+1.120e-001,+1.139e-002,-9.845e-003,-1.533e-001,-2.557e-002,-9.692e-003,+2.914e-002,-6.924e-002,-9.297e-002,-1.275e-002,+3.724e-002,-5.548e-002 },
  {-4.683e-002,-8.624e-002,+9.213e-002,+6.886e-002,-1.319e-001,-5.205e-002,+1.058e-001,-1.834e-002,-9.773e-002,-4.537e-002,+5.485e-002,-5.938e-002,+7.020e-002,-1.354e-001,-1.376e-002,+1.190e-002,+1.854e-001,+3.092e-002,+1.172e-002,-3.523e-002,+8.370e-002,+1.124e-001,+1.541e-002,-4.501e-002,+6.707e-002 },
  {+5.070e-002,+9.335e-002,-9.973e-002,-7.454e-002,+1.428e-001,+5.634e-002,-1.145e-001,+1.985e-002,+1.058e-001,+4.912e-002,-5.938e-002,+6.428e-002,-7.599e-002,+1.466e-001,+1.490e-002,-1.288e-002,-2.007e-001,-3.347e-002,-1.268e-002,+3.814e-002,-9.061e-002,-1.217e-001,-1.668e-002,+4.873e-002,-7.260e-002 },
  {-5.994e-002,-1.104e-001,+1.179e-001,+8.813e-002,-1.689e-001,-6.661e-002,+1.354e-001,-2.347e-002,-1.251e-001,-5.807e-002,+7.020e-002,-7.599e-002,+8.984e-002,-1.733e-001,-1.762e-002,+1.523e-002,+2.372e-001,+3.957e-002,+1.500e-002,-4.509e-002,+1.071e-001,+1.438e-001,+1.972e-002,-5.761e-002,+8.583e-002 },
  {+1.156e-001,+2.129e-001,-2.274e-001,-1.700e-001,+3.257e-001,+1.285e-001,-2.611e-001,+4.527e-002,+2.412e-001,+1.120e-001,-1.354e-001,+1.466e-001,-1.733e-001,+3.342e-001,+3.398e-002,-2.938e-002,-4.576e-001,-7.631e-002,-2.892e-002,+8.697e-002,-2.066e-001,-2.774e-001,-3.804e-002,+1.111e-001,-1.656e-001 },
  {+1.175e-002,+2.164e-002,-2.312e-002,-1.728e-002,+3.311e-002,+1.306e-002,-2.655e-002,+4.602e-003,+2.452e-002,+1.139e-002,-1.376e-002,+1.490e-002,-1.762e-002,+3.398e-002,+3.454e-003,-2.987e-003,-4.652e-002,-7.758e-003,-2.940e-003,+8.841e-003,-2.100e-002,-2.820e-002,-3.867e-003,+1.130e-002,-1.683e-002 },
  {-1.016e-002,-1.871e-002,+1.999e-002,+1.494e-002,-2.863e-002,-1.129e-002,+2.295e-002,-3.979e-003,-2.121e-002,-9.845e-003,+1.190e-002,-1.288e-002,+1.523e-002,-2.938e-002,-2.987e-003,+2.582e-003,+4.022e-002,+6.708e-003,+2.542e-003,-7.645e-003,+1.816e-002,+2.439e-002,+3.344e-003,-9.767e-003,+1.455e-002 },
  {-1.583e-001,-2.914e-001,+3.114e-001,+2.327e-001,-4.459e-001,-1.759e-001,+3.575e-001,-6.198e-002,-3.303e-001,-1.533e-001,+1.854e-001,-2.007e-001,+2.372e-001,-4.576e-001,-4.652e-002,+4.022e-002,+6.265e-001,+1.045e-001,+3.960e-002,-1.191e-001,+2.829e-001,+3.799e-001,+5.208e-002,-1.521e-001,+2.267e-001 },
  {-2.640e-002,-4.860e-002,+5.193e-002,+3.881e-002,-7.436e-002,-2.933e-002,+5.963e-002,-1.034e-002,-5.508e-002,-2.557e-002,+3.092e-002,-3.347e-002,+3.957e-002,-7.631e-002,-7.758e-003,+6.708e-003,+1.045e-001,+1.742e-002,+6.604e-003,-1.986e-002,+4.717e-002,+6.335e-002,+8.686e-003,-2.537e-002,+3.780e-002 },
  {-1.000e-002,-1.842e-002,+1.968e-002,+1.471e-002,-2.818e-002,-1.112e-002,+2.260e-002,-3.918e-003,-2.088e-002,-9.692e-003,+1.172e-002,-1.268e-002,+1.500e-002,-2.892e-002,-2.940e-003,+2.542e-003,+3.960e-002,+6.604e-003,+2.503e-003,-7.526e-003,+1.788e-002,+2.401e-002,+3.292e-003,-9.615e-003,+1.433e-002 },
  {+3.008e-002,+5.539e-002,-5.918e-002,-4.423e-002,+8.475e-002,+3.343e-002,-6.795e-002,+1.178e-002,+6.277e-002,+2.914e-002,-3.523e-002,+3.814e-002,-4.509e-002,+8.697e-002,+8.841e-003,-7.645e-003,-1.191e-001,-1.986e-002,-7.526e-003,+2.263e-002,-5.376e-002,-7.219e-002,-9.898e-003,+2.891e-002,-4.308e-002 },
  {-7.146e-002,-1.316e-001,+1.406e-001,+1.051e-001,-2.013e-001,-7.942e-002,+1.614e-001,-2.799e-002,-1.491e-001,-6.924e-002,+8.370e-002,-9.061e-002,+1.071e-001,-2.066e-001,-2.100e-002,+1.816e-002,+2.829e-001,+4.717e-002,+1.788e-002,-5.376e-002,+1.277e-001,+1.715e-001,+2.352e-002,-6.869e-002,+1.023e-001 },
  {-9.596e-002,-1.767e-001,+1.888e-001,+1.411e-001,-2.704e-001,-1.066e-001,+2.168e-001,-3.758e-002,-2.003e-001,-9.297e-002,+1.124e-001,-1.217e-001,+1.438e-001,-2.774e-001,-2.820e-002,+2.439e-002,+3.799e-001,+6.335e-002,+2.401e-002,-7.219e-002,+1.715e-001,+2.303e-001,+3.158e-002,-9.223e-002,+1.374e-001 },
  {-1.316e-002,-2.423e-002,+2.588e-002,+1.935e-002,-3.707e-002,-1.462e-002,+2.972e-002,-5.153e-003,-2.746e-002,-1.275e-002,+1.541e-002,-1.668e-002,+1.972e-002,-3.804e-002,-3.867e-003,+3.344e-003,+5.208e-002,+8.686e-003,+3.292e-003,-9.898e-003,+2.352e-002,+3.158e-002,+4.330e-003,-1.265e-002,+1.884e-002 },
  {+3.843e-002,+7.077e-002,-7.561e-002,-5.651e-002,+1.083e-001,+4.271e-002,-8.682e-002,+1.505e-002,+8.020e-002,+3.724e-002,-4.501e-002,+4.873e-002,-5.761e-002,+1.111e-001,+1.130e-002,-9.767e-003,-1.521e-001,-2.537e-002,-9.615e-003,+2.891e-002,-6.869e-002,-9.223e-002,-1.265e-002,+3.694e-002,-5.504e-002 },
  {-5.726e-002,-1.054e-001,+1.126e-001,+8.420e-002,-1.613e-001,-6.364e-002,+1.293e-001,-2.242e-002,-1.195e-001,-5.548e-002,+6.707e-002,-7.260e-002,+8.583e-002,-1.656e-001,-1.683e-002,+1.455e-002,+2.267e-001,+3.780e-002,+1.433e-002,-4.308e-002,+1.023e-001,+1.374e-001,+1.884e-002,-5.504e-002,+8.200e-002 }   }
}
    main loop time = 0.075251
        total time = 0.081261
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.006010
SDPA end at [Thu Jul 15 21:27:26 2021]
ALL TIME = 0.083924
