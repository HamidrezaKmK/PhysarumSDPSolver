SDPA start at [Thu Jul 15 21:27:27 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset3\dense25negative-definite9.dat-s  : sparse
"Dense tests with negative definite C matrices matrices have dimension 25 * 25 and 1-10 constraints"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset3\dense25negative-definite9.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -1.52e+004 9.0e-001 1.0e+000 2.00e-001
 1 2.0e+003 1.0e-001 3.7e-016 +9.68e+000 -1.89e+004 9.9e-001 1.7e+000 2.00e-001
 2 3.3e+002 1.3e-003 1.1e-015 +3.57e+000 -7.95e+003 1.0e+000 1.1e+000 2.00e-001
 3 5.3e+001 9.3e-018 1.6e-016 +3.08e+000 -1.32e+003 2.0e+001 9.6e-001 1.00e-001
 4 7.0e+000 9.3e-018 3.7e-017 -8.56e+000 -1.83e+002 3.0e+000 9.6e-001 1.00e-001
 5 8.8e-001 9.3e-018 5.9e-018 -1.02e+001 -3.24e+001 3.4e+000 8.5e-001 1.00e-001
 6 2.1e-001 9.3e-018 5.9e-018 -1.04e+001 -1.55e+001 9.9e-001 8.9e-001 1.00e-001
 7 4.1e-002 1.9e-017 9.8e-018 -1.06e+001 -1.16e+001 1.0e+000 9.6e-001 1.00e-001
 8 5.4e-003 9.3e-018 9.8e-018 -1.06e+001 -1.08e+001 1.1e+000 9.7e-001 1.00e-001
 9 6.5e-004 9.3e-018 5.9e-017 -1.07e+001 -1.07e+001 1.0e+000 9.9e-001 1.00e-001
10 6.8e-005 1.9e-017 7.0e-017 -1.07e+001 -1.07e+001 1.0e+000 9.9e-001 1.00e-001
11 7.1e-006 1.9e-017 2.6e-017 -1.07e+001 -1.07e+001 1.0e+000 1.0e+000 1.00e-001
12 7.2e-007 1.9e-017 1.2e-016 -1.07e+001 -1.07e+001 1.0e+000 1.0e+000 1.00e-001
13 7.2e-008 1.9e-017 2.5e-016 -1.07e+001 -1.07e+001 1.0e+000 1.0e+000 1.00e-001
14 7.2e-009 1.9e-017 5.4e-016 -1.07e+001 -1.07e+001 1.0e+000 1.0e+000 1.00e-001

phase.value  = pdOPT     
   Iteration = 14
          mu = +7.1670640267029737e-009
relative gap = +1.6820045579737667e-008
        gap  = +1.7917645678267036e-007
     digits  = +7.7741728316652328e+000
objValPrimal = -1.0652554681043069e+001
objValDual   = -1.0652554860219526e+001
p.feas.error = +1.7763568394002505e-015
d.feas.error = +7.8159700933611020e-012
total time   = 0.087765
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
 Predictor time  =       0.026928,  33.750282
 Corrector time  =       0.012966,  16.250971
 Make bMat time  =       0.011968,  15.000125
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.008976,  11.250094
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.008976,  11.250094
 Make rMat time  =       0.000997,  1.249593
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.001007,  1.262126
 Cholesky bMat   =       0.000998,  1.250846
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.036900,  46.248715
 solve           =       0.000000,  0.000000
 sumDz           =       0.000997,  1.249593
 makedX          =       0.004975,  6.235430
 symmetriseDx    =       0.018952,  23.753541
 makedXdZ        =       0.024924,  31.238563
 xMatTime        =       0.000997,  1.249593
 zMatTime        =       0.000997,  1.249593
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.017952,  22.500188
 EigzMatTime     =       0.018948,  23.748527
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000998,  1.250846
 EigTime         =       0.036900,  46.248715
 sub_total_bMat  =       0.067818,  84.999875
 Main Loop       =       0.079786,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.007979,  10.000501
 Total           =       0.087765,  110.000501

xVec = 
{-6.109e-003,+1.824e-002,+1.564e-002,+7.548e-003,+1.438e-002,-2.699e-002,+2.065e-002,-4.862e-003,+9.063e-003}
xMat = 
{
{ {+5.374e+000,+6.799e-002,-4.083e-002,+4.344e-001,-3.131e-001,+4.022e-001,-4.856e-001,+2.389e-001,-2.808e-001,+5.487e-001,+1.420e+000,+7.323e-001,+5.559e-001,-2.919e-001,-4.851e-001,+8.811e-001,+5.426e-001,+2.531e-001,-2.557e-001,+5.939e-001,+1.383e+000,+7.570e-001,+4.802e-001,-2.659e-001,-6.259e-001 },
  {+6.799e-002,+5.738e+000,+5.748e-001,+4.923e-001,+6.081e-002,-5.247e-001,+1.482e+000,-3.659e-002,-5.117e-001,-1.955e+000,-5.079e-001,+1.001e+000,+9.039e-001,+4.471e-003,-3.276e-001,+6.566e-001,+7.967e-002,-8.318e-002,+1.058e-001,+4.012e-001,-5.365e-001,-2.435e-001,-9.422e-001,-7.200e-001,+1.829e-001 },
  {-4.083e-002,+5.748e-001,+4.696e+000,+1.109e+000,-5.382e-001,+1.324e+000,-8.815e-001,+1.450e+000,-1.290e-001,-6.071e-001,-1.343e-001,+1.211e-001,+4.110e-001,-3.193e-001,+6.976e-001,+1.247e+000,+4.745e-001,-3.372e-002,-8.782e-001,-3.676e-001,+2.552e-001,+7.241e-002,+2.151e-002,+4.500e-001,-6.677e-001 },
  {+4.344e-001,+4.923e-001,+1.109e+000,+7.192e+000,-7.977e-001,+3.704e-001,-1.551e+000,+5.483e-001,+1.797e-001,+1.847e-002,+4.551e-002,-5.764e-002,-5.000e-001,+3.536e-001,+2.210e-001,+1.547e+000,-7.282e-001,-5.359e-001,+4.399e-001,-6.295e-001,-1.103e+000,-5.540e-001,+2.215e-001,-5.022e-001,-1.975e+000 },
  {-3.131e-001,+6.081e-002,-5.382e-001,-7.977e-001,+6.293e+000,-1.402e-001,-4.783e-001,-5.202e-002,+4.773e-001,+2.692e-001,-2.902e-001,-1.113e+000,+1.337e+000,-1.240e+000,+4.336e-001,+4.322e-001,+6.977e-002,+5.646e-001,-1.100e+000,+9.639e-001,+5.614e-001,-4.147e-001,+1.643e-001,+2.479e-001,+2.509e-001 },
  {+4.022e-001,-5.247e-001,+1.324e+000,+3.704e-001,-1.402e-001,+7.686e+000,+7.338e-001,-1.195e-001,-3.075e-001,+3.050e-001,-2.992e-002,+1.548e+000,+1.704e-001,-1.312e+000,-9.319e-002,+4.175e-001,-1.603e-001,+1.008e-001,-3.052e-001,-9.268e-001,-1.011e-001,+4.368e-002,+3.818e-001,+1.893e+000,+7.782e-001 },
  {-4.856e-001,+1.482e+000,-8.815e-001,-1.551e+000,-4.783e-001,+7.338e-001,+5.201e+000,+3.673e-001,+1.674e+000,-7.398e-001,-5.250e-001,+1.802e-001,+1.356e+000,-2.159e-001,+1.478e+000,-1.143e+000,-1.446e-001,+8.854e-001,+5.910e-001,-1.389e+000,+2.379e-001,-1.766e-001,-1.746e-004,-4.576e-001,+4.565e-002 },
  {+2.389e-001,-3.659e-002,+1.450e+000,+5.483e-001,-5.202e-002,-1.195e-001,+3.673e-001,+5.530e+000,+4.471e-001,-8.665e-002,+1.701e+000,+3.997e-001,+1.224e+000,-1.735e-001,+5.975e-001,-4.824e-001,+5.038e-001,-1.542e+000,+4.693e-002,-1.515e+000,-3.636e-001,-5.392e-001,+6.693e-002,-5.879e-001,-2.970e-001 },
  {-2.808e-001,-5.117e-001,-1.290e-001,+1.797e-001,+4.773e-001,-3.075e-001,+1.674e+000,+4.471e-001,+4.668e+000,+1.468e+000,-8.700e-001,-6.264e-001,+3.549e-001,+4.962e-001,+4.811e-002,+7.612e-001,-4.780e-002,-1.489e-001,+6.572e-001,+5.329e-001,+2.312e-001,-2.527e-001,-1.294e+000,+8.271e-001,-5.520e-002 },
  {+5.487e-001,-1.955e+000,-6.071e-001,+1.847e-002,+2.692e-001,+3.050e-001,-7.398e-001,-8.665e-002,+1.468e+000,+4.477e+000,+6.388e-002,+3.394e-002,+4.570e-001,-2.673e-001,+6.210e-002,-1.846e-001,-4.358e-001,-2.359e-001,+1.063e-001,+6.461e-001,-1.273e+000,-8.015e-001,-1.074e+000,+4.992e-001,+5.055e-002 },
  {+1.420e+000,-5.079e-001,-1.343e-001,+4.551e-002,-2.902e-001,-2.992e-002,-5.250e-001,+1.701e+000,-8.700e-001,+6.388e-002,+5.394e+000,+7.535e-001,-2.146e-001,-7.296e-001,+1.546e-001,+1.878e-002,-1.174e+000,+1.661e+000,+6.038e-001,+2.072e+000,+1.084e+000,-1.406e-002,-5.910e-001,+3.051e-001,+3.855e-001 },
  {+7.323e-001,+1.001e+000,+1.211e-001,-5.764e-002,-1.113e+000,+1.548e+000,+1.802e-001,+3.997e-001,-6.264e-001,+3.394e-002,+7.535e-001,+5.901e+000,+1.152e+000,-4.387e-001,-7.301e-001,-1.355e+000,-6.020e-001,+9.366e-001,-8.427e-001,-3.210e-001,-1.946e-002,+3.330e-002,-2.704e-002,+7.012e-001,-2.928e-001 },
  {+5.559e-001,+9.039e-001,+4.110e-001,-5.000e-001,+1.337e+000,+1.704e-001,+1.356e+000,+1.224e+000,+3.549e-001,+4.570e-001,-2.146e-001,+1.152e+000,+5.089e+000,+1.943e-001,-4.460e-001,-2.830e-001,-1.418e-002,+1.797e-001,-2.346e-001,+9.094e-002,+3.033e-001,-6.407e-002,-4.388e-001,-2.127e-001,+4.629e-001 },
  {-2.919e-001,+4.471e-003,-3.193e-001,+3.536e-001,-1.240e+000,-1.312e+000,-2.159e-001,-1.735e-001,+4.962e-001,-2.673e-001,-7.296e-001,-4.387e-001,+1.943e-001,+5.216e+000,+3.004e-001,-1.202e+000,-7.257e-001,-6.217e-001,+4.135e-001,+2.054e-001,-4.617e-001,+2.181e-001,+1.475e+000,+4.363e-001,+3.946e-001 },
  {-4.851e-001,-3.276e-001,+6.976e-001,+2.210e-001,+4.336e-001,-9.319e-002,+1.478e+000,+5.975e-001,+4.811e-002,+6.210e-002,+1.546e-001,-7.301e-001,-4.460e-001,+3.004e-001,+6.475e+000,-4.256e-001,+5.515e-001,+3.306e-002,+5.463e-002,+3.109e-001,-1.061e+000,-8.517e-001,-7.698e-002,-7.281e-001,-5.858e-001 },
  {+8.811e-001,+6.566e-001,+1.247e+000,+1.547e+000,+4.322e-001,+4.175e-001,-1.143e+000,-4.824e-001,+7.612e-001,-1.846e-001,+1.878e-002,-1.355e+000,-2.830e-001,-1.202e+000,-4.256e-001,+4.586e+000,-9.800e-002,+8.098e-001,+2.602e-001,+7.617e-001,-2.133e-001,-1.186e+000,+5.790e-002,+1.372e-001,-7.268e-001 },
  {+5.426e-001,+7.967e-002,+4.745e-001,-7.282e-001,+6.977e-002,-1.603e-001,-1.446e-001,+5.038e-001,-4.780e-002,-4.358e-001,-1.174e+000,-6.020e-001,-1.418e-002,-7.257e-001,+5.515e-001,-9.800e-002,+6.094e+000,+1.402e-001,-6.957e-001,-5.407e-001,+5.237e-002,+7.760e-001,+6.501e-001,-7.433e-002,+2.160e-001 },
  {+2.531e-001,-8.318e-002,-3.372e-002,-5.359e-001,+5.646e-001,+1.008e-001,+8.854e-001,-1.542e+000,-1.489e-001,-2.359e-001,+1.661e+000,+9.366e-001,+1.797e-001,-6.217e-001,+3.306e-002,+8.098e-001,+1.402e-001,+5.642e+000,-4.346e-001,+1.895e-001,-9.109e-001,+3.120e-001,+9.266e-002,-5.412e-001,-1.408e-001 },
  {-2.557e-001,+1.058e-001,-8.782e-001,+4.399e-001,-1.100e+000,-3.052e-001,+5.910e-001,+4.693e-002,+6.572e-001,+1.063e-001,+6.038e-001,-8.427e-001,-2.346e-001,+4.135e-001,+5.463e-002,+2.602e-001,-6.957e-001,-4.346e-001,+6.050e+000,-1.074e+000,+2.186e-001,-1.480e+000,-1.136e+000,+1.217e+000,+1.264e+000 },
  {+5.939e-001,+4.012e-001,-3.676e-001,-6.295e-001,+9.639e-001,-9.268e-001,-1.389e+000,-1.515e+000,+5.329e-001,+6.461e-001,+2.072e+000,-3.210e-001,+9.094e-002,+2.054e-001,+3.109e-001,+7.617e-001,-5.407e-001,+1.895e-001,-1.074e+000,+5.660e+000,+2.899e-002,+1.342e-001,-2.978e-001,+6.422e-001,+1.682e+000 },
  {+1.383e+000,-5.365e-001,+2.552e-001,-1.103e+000,+5.614e-001,-1.011e-001,+2.379e-001,-3.636e-001,+2.312e-001,-1.273e+000,+1.084e+000,-1.946e-002,+3.033e-001,-4.617e-001,-1.061e+000,-2.133e-001,+5.237e-002,-9.109e-001,+2.186e-001,+2.899e-002,+5.117e+000,+1.201e+000,-4.517e-001,+2.411e-001,-2.057e-001 },
  {+7.570e-001,-2.435e-001,+7.241e-002,-5.540e-001,-4.147e-001,+4.368e-002,-1.766e-001,-5.392e-001,-2.527e-001,-8.015e-001,-1.406e-002,+3.330e-002,-6.407e-002,+2.181e-001,-8.517e-001,-1.186e+000,+7.760e-001,+3.120e-001,-1.480e+000,+1.342e-001,+1.201e+000,+5.071e+000,+9.725e-001,-3.206e-001,+1.460e+000 },
  {+4.802e-001,-9.422e-001,+2.151e-002,+2.215e-001,+1.643e-001,+3.818e-001,-1.746e-004,+6.693e-002,-1.294e+000,-1.074e+000,-5.910e-001,-2.704e-002,-4.388e-001,+1.475e+000,-7.698e-002,+5.790e-002,+6.501e-001,+9.266e-002,-1.136e+000,-2.978e-001,-4.517e-001,+9.725e-001,+6.286e+000,+2.443e-001,+6.160e-001 },
  {-2.659e-001,-7.200e-001,+4.500e-001,-5.022e-001,+2.479e-001,+1.893e+000,-4.576e-001,-5.879e-001,+8.271e-001,+4.992e-001,+3.051e-001,+7.012e-001,-2.127e-001,+4.363e-001,-7.281e-001,+1.372e-001,-7.433e-002,-5.412e-001,+1.217e+000,+6.422e-001,+2.411e-001,-3.206e-001,+2.443e-001,+5.581e+000,-1.064e+000 },
  {-6.259e-001,+1.829e-001,-6.677e-001,-1.975e+000,+2.509e-001,+7.782e-001,+4.565e-002,-2.970e-001,-5.520e-002,+5.055e-002,+3.855e-001,-2.928e-001,+4.629e-001,+3.946e-001,-5.858e-001,-7.268e-001,+2.160e-001,-1.408e-001,+1.264e+000,+1.682e+000,-2.057e-001,+1.460e+000,+6.160e-001,-1.064e+000,+6.330e+000 }   }
}
yMat = 
{
{ {+3.822e-004,-2.228e-003,+6.888e-003,-3.217e-003,+4.655e-003,-1.485e-003,+4.159e-004,-1.857e-002,+9.354e-003,-5.417e-003,+2.060e-002,+2.787e-003,+3.995e-003,+1.301e-003,-1.543e-003,+9.769e-004,+3.819e-003,-1.476e-002,-1.302e-003,-1.200e-002,-1.210e-002,+2.772e-004,+1.157e-003,-4.678e-003,-8.237e-004 },
  {-2.228e-003,+3.436e-002,-6.561e-002,+2.301e-002,-5.155e-002,+1.621e-002,-3.296e-002,+1.501e-001,-5.550e-002,+3.996e-002,-1.666e-001,-3.541e-002,-2.117e-002,-2.358e-002,+2.301e-002,-2.387e-002,-3.731e-002,+1.300e-001,+4.366e-003,+8.754e-002,+1.048e-001,-1.012e-002,+1.077e-003,+4.210e-002,+9.239e-003 },
  {+6.888e-003,-6.561e-002,+1.545e-001,-6.305e-002,+1.130e-001,-3.576e-002,+4.385e-002,-3.845e-001,+1.697e-001,-1.076e-001,+4.266e-001,+7.305e-002,+6.947e-002,+4.249e-002,-4.450e-002,+3.925e-002,+8.674e-002,-3.184e-001,-1.963e-002,-2.372e-001,-2.589e-001,+1.513e-002,+1.154e-002,-1.020e-001,-2.013e-002 },
  {-3.217e-003,+2.301e-002,-6.305e-002,+2.793e-002,-4.404e-002,+1.401e-002,-9.579e-003,+1.646e-001,-7.893e-002,+4.727e-002,-1.826e-001,-2.728e-002,-3.321e-002,-1.413e-002,+1.578e-002,-1.184e-002,-3.514e-002,+1.330e-001,+1.032e-002,+1.045e-001,+1.086e-001,-4.027e-003,-8.182e-003,+4.233e-002,+7.817e-003 },
  {+4.655e-003,-5.155e-002,+1.130e-001,-4.404e-002,+8.457e-002,-2.672e-002,+3.994e-002,-2.739e-001,+1.150e-001,-7.555e-002,+3.040e-001,+5.583e-002,+4.623e-002,+3.412e-002,-3.480e-002,+3.266e-002,+6.369e-002,-2.300e-001,-1.218e-002,-1.662e-001,-1.865e-001,+1.309e-002,+5.157e-003,-7.391e-002,-1.510e-002 },
  {-1.485e-003,+1.621e-002,-3.576e-002,+1.401e-002,-2.672e-002,+8.443e-003,-1.241e-002,+8.694e-002,-3.669e-002,+2.401e-002,-9.648e-002,-1.760e-002,-1.477e-002,-1.071e-002,+1.095e-002,-1.022e-002,-2.016e-002,+7.290e-002,+3.920e-003,+5.284e-002,+5.913e-002,-4.085e-003,-1.730e-003,+2.342e-002,+4.769e-003 },
  {+4.159e-004,-3.296e-002,+4.385e-002,-9.579e-003,+3.994e-002,-1.241e-002,+4.409e-002,-7.991e-002,+1.155e-002,-1.786e-002,+8.883e-002,+3.041e-002,+1.306e-003,+2.428e-002,-2.170e-002,+2.703e-002,+2.565e-002,-7.881e-002,+3.196e-003,-3.819e-002,-6.218e-002,+1.246e-002,-9.922e-003,-2.628e-002,-7.236e-003 },
  {-1.857e-002,+1.501e-001,-3.845e-001,+1.646e-001,-2.739e-001,+8.694e-002,-7.991e-002,+9.840e-001,-4.564e-001,+2.796e-001,-1.092e+000,-1.729e-001,-1.900e-001,-9.449e-002,+1.024e-001,-8.300e-002,-2.150e-001,+8.032e-001,+5.697e-002,+6.173e-001,+6.548e-001,-3.010e-002,-4.092e-002,+2.563e-001,+4.870e-002 },
  {+9.354e-003,-5.550e-002,+1.697e-001,-7.893e-002,+1.150e-001,-3.669e-002,+1.155e-002,-4.564e-001,+2.290e-001,-1.330e-001,+5.063e-001,+6.908e-002,+9.769e-002,+3.256e-002,-3.840e-002,+2.473e-002,+9.414e-002,-3.633e-001,-3.173e-002,-2.944e-001,-2.976e-001,+7.166e-003,+2.797e-002,-1.152e-001,-2.036e-002 },
  {-5.417e-003,+3.996e-002,-1.076e-001,+4.727e-002,-7.555e-002,+2.401e-002,-1.786e-002,+2.796e-001,-1.330e-001,+8.007e-002,-3.102e-001,-4.702e-002,-5.580e-002,-2.471e-002,+2.736e-002,-2.097e-002,-6.002e-002,+2.265e-001,+1.720e-002,+1.770e-001,+1.849e-001,-7.262e-003,-1.334e-002,+7.211e-002,+1.341e-002 },
  {+2.060e-002,-1.666e-001,+4.266e-001,-1.826e-001,+3.040e-001,-9.648e-002,+8.883e-002,-1.092e+000,+5.063e-001,-3.102e-001,+1.211e+000,+1.919e-001,+2.107e-001,+1.049e-001,-1.136e-001,+9.218e-002,+2.385e-001,-8.913e-001,-6.317e-002,-6.849e-001,-7.266e-001,+3.344e-002,+4.535e-002,-2.844e-001,-5.404e-002 },
  {+2.787e-003,-3.541e-002,+7.305e-002,-2.728e-002,+5.583e-002,-1.760e-002,+3.041e-002,-1.729e-001,+6.908e-002,-4.702e-002,+1.919e-001,+3.750e-002,+2.723e-002,+2.383e-002,-2.382e-002,+2.342e-002,+4.134e-002,-1.470e-001,-6.605e-003,-1.033e-001,-1.190e-001,+9.648e-003,+1.425e-003,-4.741e-002,-9.985e-003 },
  {+3.995e-003,-2.117e-002,+6.947e-002,-3.321e-002,+4.623e-002,-1.477e-002,+1.306e-003,-1.900e-001,+9.769e-002,-5.580e-002,+2.107e-001,+2.723e-002,+4.197e-002,+1.201e-002,-1.474e-002,+8.402e-003,+3.842e-002,-1.500e-001,-1.394e-002,-1.237e-001,-1.230e-001,+2.050e-003,+1.287e-002,-4.742e-002,-8.168e-003 },
  {+1.301e-003,-2.358e-002,+4.249e-002,-1.413e-002,+3.412e-002,-1.071e-002,+2.428e-002,-9.449e-002,+3.256e-002,-2.471e-002,+1.049e-001,+2.383e-002,+1.201e-002,+1.641e-002,-1.574e-002,+1.693e-002,+2.426e-002,-8.313e-002,-2.016e-003,-5.401e-002,-6.685e-002,+7.313e-003,-1.920e-003,-2.702e-002,-6.125e-003 },
  {-1.543e-003,+2.301e-002,-4.450e-002,+1.578e-002,-3.480e-002,+1.095e-002,-2.170e-002,+1.024e-001,-3.840e-002,+2.736e-002,-1.136e-001,-2.382e-002,-1.474e-002,-1.574e-002,+1.542e-002,-1.586e-002,-2.528e-002,+8.841e-002,+3.141e-003,+5.998e-002,+7.133e-002,-6.698e-003,+4.592e-004,+2.861e-002,+6.235e-003 },
  {+9.769e-004,-2.387e-002,+3.925e-002,-1.184e-002,+3.266e-002,-1.022e-002,+2.703e-002,-8.300e-002,+2.473e-002,-2.097e-002,+9.218e-002,+2.342e-002,+8.402e-003,+1.693e-002,-1.586e-002,+1.795e-002,+2.255e-002,-7.509e-002,-5.831e-004,-4.563e-002,-6.009e-002,+7.945e-003,-3.697e-003,-2.457e-002,-5.879e-003 },
  {+3.819e-003,-3.731e-002,+8.674e-002,-3.514e-002,+6.369e-002,-2.016e-002,+2.565e-002,-2.150e-001,+9.414e-002,-6.002e-002,+2.385e-001,+4.134e-002,+3.842e-002,+2.426e-002,-2.528e-002,+2.255e-002,+4.875e-002,-1.784e-001,-1.074e-002,-1.323e-001,-1.450e-001,+8.759e-003,+6.053e-003,-5.718e-002,-1.135e-002 },
  {-1.476e-002,+1.300e-001,-3.184e-001,+1.330e-001,-2.300e-001,+7.290e-002,-7.881e-002,+8.032e-001,-3.633e-001,+2.265e-001,-8.913e-001,-1.470e-001,-1.500e-001,-8.313e-002,+8.841e-002,-7.509e-002,-1.784e-001,+6.606e-001,+4.368e-002,+4.996e-001,+5.378e-001,-2.819e-002,-2.862e-002,+2.112e-001,+4.094e-002 },
  {-1.302e-003,+4.366e-003,-1.963e-002,+1.032e-002,-1.218e-002,+3.920e-003,+3.196e-003,+5.697e-002,-3.173e-002,+1.720e-002,-6.317e-002,-6.605e-003,-1.394e-002,-2.016e-003,+3.141e-003,-5.831e-004,-1.074e-002,+4.368e-002,+4.926e-003,+3.823e-002,+3.604e-002,+3.408e-004,-5.125e-003,+1.370e-002,+2.137e-003 },
  {-1.200e-002,+8.754e-002,-2.372e-001,+1.045e-001,-1.662e-001,+5.284e-002,-3.819e-002,+6.173e-001,-2.944e-001,+1.770e-001,-6.849e-001,-1.033e-001,-1.237e-001,-5.401e-002,+5.998e-002,-4.563e-002,-1.323e-001,+4.996e-001,+3.823e-002,+3.911e-001,+4.080e-001,-1.570e-002,-2.988e-002,+1.590e-001,+2.951e-002 },
  {-1.210e-002,+1.048e-001,-2.589e-001,+1.086e-001,-1.865e-001,+5.913e-002,-6.218e-002,+6.548e-001,-2.976e-001,+1.849e-001,-7.266e-001,-1.190e-001,-1.230e-001,-6.685e-002,+7.133e-002,-6.009e-002,-1.450e-001,+5.378e-001,+3.604e-002,+4.080e-001,+4.379e-001,-2.243e-002,-2.406e-002,+1.718e-001,+3.319e-002 },
  {+2.772e-004,-1.012e-002,+1.513e-002,-4.027e-003,+1.309e-002,-4.085e-003,+1.246e-002,-3.010e-002,+7.166e-003,-7.262e-003,+3.344e-002,+9.648e-003,+2.050e-003,+7.313e-003,-6.698e-003,+7.945e-003,+8.759e-003,-2.819e-002,+3.408e-004,-1.570e-002,-2.243e-002,+3.588e-003,-2.276e-003,-9.296e-003,-2.364e-003 },
  {+1.157e-003,+1.077e-003,+1.154e-002,-8.182e-003,+5.157e-003,-1.730e-003,-9.922e-003,-4.092e-002,+2.797e-002,-1.334e-002,+4.535e-002,+1.425e-003,+1.287e-002,-1.920e-003,+4.592e-004,-3.697e-003,+6.053e-003,-2.862e-002,-5.125e-003,-2.988e-002,-2.406e-002,-2.276e-003,+6.368e-003,-8.732e-003,-8.691e-004 },
  {-4.678e-003,+4.210e-002,-1.020e-001,+4.233e-002,-7.391e-002,+2.342e-002,-2.628e-002,+2.563e-001,-1.152e-001,+7.211e-002,-2.844e-001,-4.741e-002,-4.742e-002,-2.702e-002,+2.861e-002,-2.457e-002,-5.718e-002,+2.112e-001,+1.370e-002,+1.590e-001,+1.718e-001,-9.296e-003,-8.732e-003,+6.754e-002,+1.316e-002 },
  {-8.237e-004,+9.239e-003,-2.013e-002,+7.817e-003,-1.510e-002,+4.769e-003,-7.236e-003,+4.870e-002,-2.036e-002,+1.341e-002,-5.404e-002,-9.985e-003,-8.168e-003,-6.125e-003,+6.235e-003,-5.879e-003,-1.135e-002,+4.094e-002,+2.137e-003,+2.951e-002,+3.319e-002,-2.364e-003,-8.691e-004,+1.316e-002,+2.696e-003 }   }
}
    main loop time = 0.079786
        total time = 0.087765
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.007979
SDPA end at [Thu Jul 15 21:27:27 2021]
ALL TIME = 0.090730