SDPA start at [Thu Jul 15 21:27:25 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset3\dense25negative-definite14.dat-s  : sparse
"Dense tests with negative definite C matrices matrices have dimension 25 * 25 and 1-10 constraints"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset3\dense25negative-definite14.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -1.35e+004 9.0e-001 1.0e+000 2.00e-001
 1 1.9e+003 9.7e-002 3.7e-016 +5.43e+000 -1.70e+004 9.9e-001 1.7e+000 2.00e-001
 2 3.1e+002 1.4e-003 9.0e-016 +2.75e+000 -7.39e+003 1.0e+000 1.1e+000 2.00e-001
 3 4.8e+001 9.2e-018 3.8e-016 +2.56e+000 -1.19e+003 2.1e+001 9.7e-001 1.00e-001
 4 6.0e+000 9.2e-018 7.2e-017 -3.72e+000 -1.54e+002 6.3e+000 9.7e-001 1.00e-001
 5 7.6e-001 9.2e-018 5.8e-018 -4.77e+000 -2.37e+001 2.3e+000 9.4e-001 1.00e-001
 6 1.1e-001 9.2e-018 5.0e-018 -4.86e+000 -7.71e+000 1.0e+000 9.3e-001 1.00e-001
 7 1.9e-002 1.8e-017 5.8e-018 -4.98e+000 -5.44e+000 1.0e+000 9.8e-001 1.00e-001
 8 2.2e-003 1.8e-017 7.0e-018 -5.00e+000 -5.06e+000 1.0e+000 9.9e-001 1.00e-001
 9 2.4e-004 1.8e-017 1.9e-017 -5.01e+000 -5.01e+000 1.0e+000 1.0e+000 1.00e-001
10 2.4e-005 1.8e-017 6.4e-018 -5.01e+000 -5.01e+000 1.0e+000 1.0e+000 1.00e-001
11 2.4e-006 1.8e-017 7.9e-017 -5.01e+000 -5.01e+000 1.0e+000 1.0e+000 1.00e-001
12 2.4e-007 1.8e-017 1.0e-016 -5.01e+000 -5.01e+000 1.0e+000 1.0e+000 1.00e-001
13 2.4e-008 1.8e-017 2.2e-016 -5.01e+000 -5.01e+000 9.0e-001 9.0e-001 1.00e-001

phase.value  = pdFEAS    
   Iteration = 13
          mu = +2.4165299947753739e-008
relative gap = +1.2069391861108785e-007
        gap  = +6.0413253955005075e-007
     digits  = +6.9183146120914198e+000
objValPrimal = -5.0054924891384616e+000
objValDual   = -5.0054930932710011e+000
p.feas.error = +1.7763568394002505e-015
d.feas.error = +2.6574298317427747e-012
total time   = 0.081464
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
 Predictor time  =       0.024587,  33.469004
 Corrector time  =       0.012969,  17.654025
 Make bMat time  =       0.012895,  17.553293
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.009976,  13.579810
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.009976,  13.579810
 Make rMat time  =       0.002997,  4.079660
 Make gVec Mul   =       0.001016,  1.383028
 Make gVec time  =       0.004008,  5.455882
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.034908,  47.518445
 solve           =       0.000000,  0.000000
 sumDz           =       0.000000,  0.000000
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.017656,  24.034195
 makedXdZ        =       0.017656,  24.034195
 xMatTime        =       0.000000,  0.000000
 zMatTime        =       0.000000,  0.000000
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.017953,  24.438485
 EigzMatTime     =       0.016955,  23.079960
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000998,  1.358525
 EigTime         =       0.034908,  47.518445
 sub_total_bMat  =       0.060567,  82.446707
 Main Loop       =       0.073462,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.008002,  10.892706
 Total           =       0.081464,  110.892706

xVec = 
{+1.418e-003,-1.187e-002,-7.662e-003,+9.400e-003,-6.756e-003,+1.818e-002,+8.734e-003,-5.232e-003}
xMat = 
{
{ {+3.871e+000,-9.742e-001,+7.888e-001,-3.657e-001,-5.304e-001,+6.037e-001,+6.975e-001,+1.362e-001,+4.352e-001,-5.895e-001,+1.860e-001,-8.973e-002,-1.831e+000,-6.399e-001,+3.747e-001,+1.971e-001,+6.671e-001,-2.005e-002,-1.490e-001,-5.850e-001,+1.783e+000,-5.777e-001,+2.250e-001,+7.091e-001,-8.178e-001 },
  {-9.742e-001,+5.343e+000,-1.188e-001,+5.441e-002,+2.766e-001,+8.355e-001,-9.312e-002,-1.300e+000,+1.661e-001,-3.422e-003,-1.114e+000,+6.789e-001,+9.296e-001,-3.173e-002,-1.053e+000,-6.400e-001,+4.443e-001,+2.597e-001,-3.430e-001,+5.908e-001,+2.066e-001,+7.137e-002,+6.086e-001,+4.882e-001,-4.400e-001 },
  {+7.888e-001,-1.188e-001,+5.330e+000,-6.217e-002,-1.893e-001,+4.286e-001,-1.184e+000,+1.078e-001,-2.979e-001,-1.581e-002,+2.591e-001,+9.567e-001,-3.503e-001,+1.906e-001,-5.603e-001,-7.378e-001,-3.242e-001,-1.723e-001,+7.617e-001,-1.339e+000,-6.360e-001,+6.785e-001,-1.796e-002,+4.691e-002,-1.306e+000 },
  {-3.657e-001,+5.441e-002,-6.217e-002,+4.483e+000,+4.967e-001,+7.013e-001,-1.039e+000,+4.675e-001,+8.078e-001,+3.224e-001,-3.318e-001,-3.356e-001,-4.741e-001,+1.255e-001,-1.141e-001,+1.036e+000,+1.430e-001,-3.369e-001,-7.999e-001,-6.727e-001,+5.066e-001,+1.117e+000,-1.390e+000,-1.429e+000,-5.758e-001 },
  {-5.304e-001,+2.766e-001,-1.893e-001,+4.967e-001,+5.751e+000,-8.221e-001,+8.664e-001,-4.818e-001,-4.055e-001,-1.921e-001,-1.309e+000,+2.026e-001,-3.374e-001,-2.636e-002,+9.565e-002,-6.109e-001,-1.100e+000,-7.155e-001,-7.448e-002,-6.217e-001,+3.925e-001,+1.536e-001,-4.305e-001,+8.431e-001,-7.700e-001 },
  {+6.037e-001,+8.355e-001,+4.286e-001,+7.013e-001,-8.221e-001,+5.174e+000,+3.066e-002,+4.964e-001,+1.220e-001,-1.719e-001,+2.777e-002,-1.318e+000,+1.654e-001,-1.375e+000,+5.699e-001,+4.513e-001,+1.120e-001,+1.129e+000,-7.551e-001,-9.277e-001,+2.426e-001,-5.598e-001,-5.416e-001,+9.909e-001,+3.133e-002 },
  {+6.975e-001,-9.312e-002,-1.184e+000,-1.039e+000,+8.664e-001,+3.066e-002,+5.490e+000,-3.272e-001,+4.156e-001,-1.937e-001,-1.101e+000,-8.927e-002,+6.885e-001,-1.136e+000,+3.710e-001,-6.085e-001,-1.208e-001,-1.426e-002,-2.182e-001,+5.068e-001,+1.178e+000,+4.815e-001,-8.836e-002,-1.269e+000,-1.072e-001 },
  {+1.362e-001,-1.300e+000,+1.078e-001,+4.675e-001,-4.818e-001,+4.964e-001,-3.272e-001,+5.739e+000,-4.822e-001,-1.586e-001,-9.688e-001,-1.316e+000,+5.131e-001,+7.985e-001,+7.888e-001,+4.195e-001,+9.045e-001,+1.887e-002,-4.948e-001,-4.631e-001,-5.540e-001,-3.799e-001,+1.979e-001,+1.392e-001,+1.312e-001 },
  {+4.352e-001,+1.661e-001,-2.979e-001,+8.078e-001,-4.055e-001,+1.220e-001,+4.156e-001,-4.822e-001,+4.420e+000,+2.656e-001,-6.691e-001,-6.802e-001,-3.366e-001,+1.972e-001,-6.048e-001,+1.098e+000,+3.211e-001,-9.978e-001,+3.342e-001,+2.778e-001,+6.763e-001,-4.003e-001,+4.227e-002,+4.579e-001,-3.281e-001 },
  {-5.895e-001,-3.422e-003,-1.581e-002,+3.224e-001,-1.921e-001,-1.719e-001,-1.937e-001,-1.586e-001,+2.656e-001,+4.972e+000,+3.564e-001,+5.588e-001,-8.270e-002,-1.761e-001,+2.029e-001,+6.765e-001,+8.119e-001,-6.379e-001,-3.591e-001,-1.098e-004,-1.184e+000,+3.575e-002,+4.310e-001,+3.068e-001,+9.265e-001 },
  {+1.860e-001,-1.114e+000,+2.591e-001,-3.318e-001,-1.309e+000,+2.777e-002,-1.101e+000,-9.688e-001,-6.691e-001,+3.564e-001,+6.353e+000,-9.502e-001,-7.643e-001,+6.098e-001,-4.010e-001,+6.301e-001,+2.135e-001,-5.714e-001,-8.086e-001,-1.489e-001,-4.572e-001,+8.556e-001,-4.390e-002,+7.851e-001,+3.024e-001 },
  {-8.973e-002,+6.789e-001,+9.567e-001,-3.356e-001,+2.026e-001,-1.318e+000,-8.927e-002,-1.316e+000,-6.802e-001,+5.588e-001,-9.502e-001,+4.484e+000,-1.235e-001,-4.474e-001,+5.258e-001,+3.224e-001,-6.634e-001,-3.305e-001,+7.985e-001,+2.642e-001,+6.845e-001,-4.097e-002,+9.621e-001,+7.428e-001,+1.296e-001 },
  {-1.831e+000,+9.296e-001,-3.503e-001,-4.741e-001,-3.374e-001,+1.654e-001,+6.885e-001,+5.131e-001,-3.366e-001,-8.270e-002,-7.643e-001,-1.235e-001,+4.387e+000,+3.488e-001,+5.063e-001,-8.803e-001,+3.259e-001,-1.062e+000,+3.459e-001,+1.542e+000,+7.604e-001,-8.108e-002,-9.966e-001,-1.657e-001,-1.101e-001 },
  {-6.399e-001,-3.173e-002,+1.906e-001,+1.255e-001,-2.636e-002,-1.375e+000,-1.136e+000,+7.985e-001,+1.972e-001,-1.761e-001,+6.098e-001,-4.474e-001,+3.488e-001,+5.646e+000,-1.178e+000,+8.149e-001,+4.936e-001,+1.374e+000,+7.755e-001,+4.762e-001,+2.225e-001,-4.563e-001,+3.874e-001,-5.448e-001,-2.932e-001 },
  {+3.747e-001,-1.053e+000,-5.603e-001,-1.141e-001,+9.565e-002,+5.699e-001,+3.710e-001,+7.888e-001,-6.048e-001,+2.029e-001,-4.010e-001,+5.258e-001,+5.063e-001,-1.178e+000,+5.434e+000,-2.143e-001,-1.106e+000,-2.883e-001,+8.876e-002,-1.627e+000,+6.100e-001,-2.752e-001,+7.427e-001,+5.964e-001,-6.878e-001 },
  {+1.971e-001,-6.400e-001,-7.378e-001,+1.036e+000,-6.109e-001,+4.513e-001,-6.085e-001,+4.195e-001,+1.098e+000,+6.765e-001,+6.301e-001,+3.224e-001,-8.803e-001,+8.149e-001,-2.143e-001,+3.875e+000,-3.054e-001,-3.672e-001,-8.070e-001,+6.301e-001,-4.016e-001,-5.572e-001,-5.680e-001,+7.097e-001,-2.029e-001 },
  {+6.671e-001,+4.443e-001,-3.242e-001,+1.430e-001,-1.100e+000,+1.120e-001,-1.208e-001,+9.045e-001,+3.211e-001,+8.119e-001,+2.135e-001,-6.634e-001,+3.259e-001,+4.936e-001,-1.106e+000,-3.054e-001,+6.062e+000,-5.394e-001,+6.323e-001,-3.316e-001,+1.782e-001,+6.950e-001,-1.038e+000,-8.500e-001,+1.085e-001 },
  {-2.005e-002,+2.597e-001,-1.723e-001,-3.369e-001,-7.155e-001,+1.129e+000,-1.426e-002,+1.887e-002,-9.978e-001,-6.379e-001,-5.714e-001,-3.305e-001,-1.062e+000,+1.374e+000,-2.883e-001,-3.672e-001,-5.394e-001,+6.549e+000,-5.967e-001,-4.122e-002,-4.387e-001,+7.808e-002,+1.028e+000,-2.216e-001,+2.277e-001 },
  {-1.490e-001,-3.430e-001,+7.617e-001,-7.999e-001,-7.448e-002,-7.551e-001,-2.182e-001,-4.948e-001,+3.342e-001,-3.591e-001,-8.086e-001,+7.985e-001,+3.459e-001,+7.755e-001,+8.876e-002,-8.070e-001,+6.323e-001,-5.967e-001,+4.994e+000,+4.383e-001,-2.398e-002,-4.433e-001,-1.247e+000,-2.632e-001,+6.537e-001 },
  {-5.850e-001,+5.908e-001,-1.339e+000,-6.727e-001,-6.217e-001,-9.277e-001,+5.068e-001,-4.631e-001,+2.778e-001,-1.098e-004,-1.489e-001,+2.642e-001,+1.542e+000,+4.762e-001,-1.627e+000,+6.301e-001,-3.316e-001,-4.122e-002,+4.383e-001,+4.845e+000,+3.323e-001,+2.330e-001,+1.427e+000,-6.163e-001,+2.473e-001 },
  {+1.783e+000,+2.066e-001,-6.360e-001,+5.066e-001,+3.925e-001,+2.426e-001,+1.178e+000,-5.540e-001,+6.763e-001,-1.184e+000,-4.572e-001,+6.845e-001,+7.604e-001,+2.225e-001,+6.100e-001,-4.016e-001,+1.782e-001,-4.387e-001,-2.398e-002,+3.323e-001,+4.697e+000,-9.984e-001,+9.805e-001,+8.383e-001,-6.630e-001 },
  {-5.777e-001,+7.137e-002,+6.785e-001,+1.117e+000,+1.536e-001,-5.598e-001,+4.815e-001,-3.799e-001,-4.003e-001,+3.575e-002,+8.556e-001,-4.097e-002,-8.108e-002,-4.563e-001,-2.752e-001,-5.572e-001,+6.950e-001,+7.808e-002,-4.433e-001,+2.330e-001,-9.984e-001,+5.469e+000,-1.370e-001,+3.370e-001,-4.596e-001 },
  {+2.250e-001,+6.086e-001,-1.796e-002,-1.390e+000,-4.305e-001,-5.416e-001,-8.836e-002,+1.979e-001,+4.227e-002,+4.310e-001,-4.390e-002,+9.621e-001,-9.966e-001,+3.874e-001,+7.427e-001,-5.680e-001,-1.038e+000,+1.028e+000,-1.247e+000,+1.427e+000,+9.805e-001,-1.370e-001,+5.405e+000,+6.633e-001,+8.871e-001 },
  {+7.091e-001,+4.882e-001,+4.691e-002,-1.429e+000,+8.431e-001,+9.909e-001,-1.269e+000,+1.392e-001,+4.579e-001,+3.068e-001,+7.851e-001,+7.428e-001,-1.657e-001,-5.448e-001,+5.964e-001,+7.097e-001,-8.500e-001,-2.216e-001,-2.632e-001,-6.163e-001,+8.383e-001,+3.370e-001,+6.633e-001,+5.009e+000,+4.301e-001 },
  {-8.178e-001,-4.400e-001,-1.306e+000,-5.758e-001,-7.700e-001,+3.133e-002,-1.072e-001,+1.312e-001,-3.281e-001,+9.265e-001,+3.024e-001,+1.296e-001,-1.101e-001,-2.932e-001,-6.878e-001,-2.029e-001,+1.085e-001,+2.277e-001,+6.537e-001,+2.473e-001,-6.630e-001,-4.596e-001,+8.871e-001,+4.301e-001,+6.213e+000 }   }
}
yMat = 
{
{ {+9.844e-002,+3.614e-003,-6.247e-002,-2.593e-002,+4.175e-002,+5.981e-003,-4.899e-002,+1.047e-002,+1.448e-002,+1.030e-002,+2.389e-002,+1.591e-002,+1.344e-001,-4.037e-002,-6.847e-002,+6.953e-002,-3.382e-002,+2.293e-002,+5.732e-002,-1.088e-001,-2.256e-002,+4.222e-002,+7.978e-002,-7.536e-002,-1.274e-002 },
  {+3.614e-003,+2.415e-002,-1.968e-002,-1.254e-001,+3.816e-002,+3.244e-002,-7.933e-002,+4.718e-002,+4.637e-002,+3.282e-002,+1.386e-002,+2.782e-002,-1.283e-002,-1.444e-002,-8.643e-004,+2.638e-002,-3.747e-002,+9.369e-003,-1.022e-002,-1.521e-002,+8.349e-002,+6.986e-002,-4.755e-002,-1.129e-001,+1.546e-002 },
  {-6.247e-002,-1.968e-002,+5.222e-002,+1.065e-001,-5.301e-002,-2.712e-002,+8.721e-002,-4.052e-002,-4.237e-002,-3.002e-002,-2.455e-002,-2.981e-002,-7.244e-002,+3.500e-002,+4.225e-002,-6.137e-002,+4.769e-002,-2.072e-002,-2.746e-002,+7.718e-002,-4.672e-002,-7.624e-002,-1.409e-002,+1.276e-001,-3.446e-003 },
  {-2.593e-002,-1.254e-001,+1.065e-001,+6.514e-001,-2.007e-001,-1.685e-001,+4.146e-001,-2.452e-001,-2.413e-001,-1.708e-001,-7.355e-002,-1.453e-001,+5.660e-002,+7.778e-002,+9.493e-003,-1.418e-001,+1.966e-001,-5.022e-002,+4.873e-002,+8.675e-002,-4.309e-001,-3.650e-001,+2.405e-001,+5.906e-001,-7.918e-002 },
  {+4.175e-002,+3.816e-002,-5.301e-002,-2.007e-001,+7.357e-002,+5.167e-002,-1.390e-001,+7.581e-002,+7.604e-002,+5.385e-002,+2.993e-002,+4.829e-002,+2.993e-002,-3.689e-002,-2.652e-002,+6.583e-002,-6.960e-002,+2.273e-002,+5.523e-003,-6.326e-002,+1.190e-001,+1.221e-001,-4.314e-002,-2.000e-001,+1.889e-002 },
  {+5.981e-003,+3.244e-002,-2.712e-002,-1.685e-001,+5.167e-002,+4.359e-002,-1.070e-001,+6.342e-002,+6.237e-002,+4.415e-002,+1.887e-002,+3.751e-002,-1.566e-002,-1.984e-002,-1.947e-003,+3.620e-002,-5.066e-002,+1.283e-002,-1.305e-002,-2.165e-002,+1.117e-001,+9.420e-002,-6.287e-002,-1.524e-001,+2.060e-002 },
  {-4.899e-002,-7.933e-002,+8.721e-002,+4.146e-001,-1.390e-001,-1.070e-001,+2.747e-001,-1.563e-001,-1.552e-001,-1.099e-001,-5.380e-002,-9.585e-002,-9.553e-003,+6.193e-002,+2.875e-002,-1.115e-001,+1.338e-001,-3.894e-002,+1.125e-002,+9.035e-002,-2.610e-001,-2.415e-001,+1.233e-001,+3.932e-001,-4.509e-002 },
  {+1.047e-002,+4.718e-002,-4.052e-002,-2.452e-001,+7.581e-002,+6.342e-002,-1.563e-001,+9.231e-002,+9.085e-002,+6.432e-002,+2.784e-002,+5.477e-002,-2.031e-002,-2.955e-002,-4.068e-003,+5.383e-002,-7.420e-002,+1.905e-002,-1.791e-002,-3.342e-002,+1.619e-001,+1.376e-001,-8.988e-002,-2.227e-001,+2.969e-002 },
  {+1.448e-002,+4.637e-002,-4.237e-002,-2.413e-001,+7.604e-002,+6.237e-002,-1.552e-001,+9.085e-002,+8.960e-002,+6.343e-002,+2.829e-002,+5.432e-002,-1.412e-002,-3.067e-002,-6.924e-003,+5.571e-002,-7.412e-002,+1.965e-002,-1.508e-002,-3.740e-002,+1.576e-001,+1.366e-001,-8.460e-002,-2.213e-001,+2.853e-002 },
  {+1.030e-002,+3.282e-002,-3.002e-002,-1.708e-001,+5.385e-002,+4.415e-002,-1.099e-001,+6.432e-002,+6.343e-002,+4.491e-002,+2.004e-002,+3.846e-002,-9.927e-003,-2.173e-002,-4.936e-003,+3.947e-002,-5.249e-002,+1.392e-002,-1.065e-002,-2.653e-002,+1.115e-001,+9.670e-002,-5.984e-002,-1.567e-001,+2.019e-002 },
  {+2.389e-002,+1.386e-002,-2.455e-002,-7.355e-002,+2.993e-002,+1.887e-002,-5.380e-002,+2.784e-002,+2.829e-002,+2.004e-002,+1.281e-002,+1.858e-002,+2.301e-002,-1.680e-002,-1.572e-002,+2.975e-002,-2.779e-002,+1.017e-002,+7.248e-003,-3.247e-002,+4.010e-002,+4.717e-002,-7.928e-003,-7.784e-002,+5.520e-003 },
  {+1.591e-002,+2.782e-002,-2.981e-002,-1.453e-001,+4.829e-002,+3.751e-002,-9.585e-002,+5.477e-002,+5.432e-002,+3.846e-002,+1.858e-002,+3.346e-002,+1.585e-003,-2.123e-002,-9.196e-003,+3.827e-002,-4.656e-002,+1.338e-002,-4.708e-003,-3.031e-002,+9.198e-002,+8.429e-002,-4.435e-002,-1.371e-001,+1.601e-002 },
  {+1.344e-001,-1.283e-002,-7.244e-002,+5.660e-002,+2.993e-002,-1.566e-002,-9.553e-003,-2.031e-002,-1.412e-002,-9.927e-003,+2.301e-002,+1.585e-003,+1.967e-001,-4.554e-002,-9.471e-002,+7.731e-002,-1.938e-002,+2.501e-002,+8.738e-002,-1.403e-001,-9.316e-002,+7.141e-003,+1.463e-001,-2.143e-002,-2.918e-002 },
  {-4.037e-002,-1.444e-002,+3.500e-002,+7.778e-002,-3.689e-002,-1.984e-002,+6.193e-002,-2.955e-002,-3.067e-002,-2.173e-002,-1.680e-002,-2.123e-002,-4.554e-002,+2.355e-002,+2.719e-002,-4.137e-002,+3.342e-002,-1.401e-002,-1.686e-002,+5.068e-002,-3.625e-002,-5.418e-002,-5.477e-003,+9.036e-002,-3.372e-003 },
  {-6.847e-002,-8.643e-004,+4.225e-002,+9.493e-003,-2.652e-002,-1.947e-003,+2.875e-002,-4.068e-003,-6.924e-003,-4.936e-003,-1.572e-002,-9.196e-003,-9.471e-002,+2.719e-002,+4.773e-002,-4.672e-002,+2.103e-002,-1.536e-002,-4.071e-002,+7.493e-002,+2.148e-002,-2.468e-002,-5.896e-002,+4.485e-002,+9.957e-003 },
  {+6.953e-002,+2.638e-002,-6.137e-002,-1.418e-001,+6.583e-002,+3.620e-002,-1.115e-001,+5.383e-002,+5.571e-002,+3.947e-002,+2.975e-002,+3.827e-002,+7.731e-002,-4.137e-002,-4.672e-002,+7.275e-002,-5.984e-002,+2.466e-002,+2.826e-002,-8.799e-002,+6.773e-002,+9.760e-002,+6.259e-003,-1.625e-001,+6.809e-003 },
  {-3.382e-002,-3.747e-002,+4.769e-002,+1.966e-001,-6.960e-002,-5.066e-002,+1.338e-001,-7.420e-002,-7.412e-002,-5.249e-002,-2.779e-002,-4.656e-002,-1.938e-002,+3.342e-002,+2.103e-002,-5.984e-002,+6.628e-002,-2.074e-002,-1.102e-003,+5.430e-002,-1.195e-001,-1.176e-001,+4.875e-002,+1.921e-001,-1.966e-002 },
  {+2.293e-002,+9.369e-003,-2.072e-002,-5.022e-002,+2.273e-002,+1.283e-002,-3.894e-002,+1.905e-002,+1.965e-002,+1.392e-002,+1.017e-002,+1.338e-002,+2.501e-002,-1.401e-002,-1.536e-002,+2.466e-002,-2.074e-002,+8.369e-003,+8.978e-003,-2.933e-002,+2.468e-002,+3.409e-002,+6.627e-004,-5.667e-002,+2.688e-003 },
  {+5.732e-002,-1.022e-002,-2.746e-002,+4.873e-002,+5.523e-003,-1.305e-002,+1.125e-002,-1.791e-002,-1.508e-002,-1.065e-002,+7.248e-003,-4.708e-003,+8.738e-002,-1.686e-002,-4.071e-002,+2.826e-002,-1.102e-003,+8.978e-003,+3.970e-002,-5.763e-002,-5.640e-002,-1.046e-002,+7.236e-002,+1.264e-002,-1.559e-002 },
  {-1.088e-001,-1.521e-002,+7.718e-002,+8.675e-002,-6.326e-002,-2.165e-002,+9.035e-002,-3.342e-002,-3.740e-002,-2.653e-002,-3.247e-002,-3.031e-002,-1.403e-001,+5.068e-002,+7.493e-002,-8.799e-002,+5.430e-002,-2.933e-002,-5.763e-002,+1.256e-001,-1.441e-002,-7.857e-002,-6.465e-002,+1.347e-001,+6.654e-003 },
  {-2.256e-002,+8.349e-002,-4.672e-002,-4.309e-001,+1.190e-001,+1.117e-001,-2.610e-001,+1.619e-001,+1.576e-001,+1.115e-001,+4.010e-002,+9.198e-002,-9.316e-002,-3.625e-002,+2.148e-002,+6.773e-002,-1.195e-001,+2.468e-002,-5.640e-002,-1.441e-002,+3.012e-001,+2.301e-001,-1.955e-001,-3.695e-001,+5.886e-002 },
  {+4.222e-002,+6.986e-002,-7.624e-002,-3.650e-001,+1.221e-001,+9.420e-002,-2.415e-001,+1.376e-001,+1.366e-001,+9.670e-002,+4.717e-002,+8.429e-002,+7.141e-003,-5.418e-002,-2.468e-002,+9.760e-002,-1.176e-001,+3.409e-002,-1.046e-002,-7.857e-002,+2.301e-001,+2.124e-001,-1.093e-001,-3.457e-001,+3.985e-002 },
  {+7.978e-002,-4.755e-002,-1.409e-002,+2.405e-001,-4.314e-002,-6.287e-002,+1.233e-001,-8.988e-002,-8.460e-002,-5.984e-002,-7.928e-003,-4.435e-002,+1.463e-001,-5.477e-003,-5.896e-002,+6.259e-003,+4.875e-002,+6.627e-004,+7.236e-002,-6.465e-002,-1.955e-001,-1.093e-001,+1.708e-001,+1.705e-001,-4.382e-002 },
  {-7.536e-002,-1.129e-001,+1.276e-001,+5.906e-001,-2.000e-001,-1.524e-001,+3.932e-001,-2.227e-001,-2.213e-001,-1.567e-001,-7.784e-002,-1.371e-001,-2.143e-002,+9.036e-002,+4.485e-002,-1.625e-001,+1.921e-001,-5.667e-002,+1.264e-002,+1.347e-001,-3.695e-001,-3.457e-001,+1.705e-001,+5.631e-001,-6.333e-002 },
  {-1.274e-002,+1.546e-002,-3.446e-003,-7.918e-002,+1.889e-002,+2.060e-002,-4.509e-002,+2.969e-002,+2.853e-002,+2.019e-002,+5.520e-003,+1.601e-002,-2.918e-002,-3.372e-003,+9.957e-003,+6.809e-003,-1.966e-002,+2.688e-003,-1.559e-002,+6.654e-003,+5.886e-002,+3.985e-002,-4.382e-002,-6.333e-002,+1.222e-002 }   }
}
    main loop time = 0.073462
        total time = 0.081464
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.008002
SDPA end at [Thu Jul 15 21:27:26 2021]
ALL TIME = 0.083544