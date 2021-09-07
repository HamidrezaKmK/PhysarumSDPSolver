SDPA start at [Thu Jul 15 21:27:26 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset3\dense25negative-definite15.dat-s  : sparse
"Dense tests with negative definite C matrices matrices have dimension 25 * 25 and 1-10 constraints"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset3\dense25negative-definite15.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -1.43e+004 9.0e-001 1.0e+000 2.00e-001
 1 1.9e+003 9.7e-002 6.5e-016 +2.80e+000 -1.80e+004 9.7e-001 1.7e+000 2.00e-001
 2 3.2e+002 2.9e-003 1.3e-015 +1.95e+000 -7.41e+003 1.0e+000 1.1e+000 2.00e-001
 3 5.0e+001 9.3e-018 4.7e-016 +1.72e+000 -1.25e+003 2.8e+001 9.6e-001 1.00e-001
 4 6.6e+000 9.3e-018 1.0e-016 -2.92e+000 -1.68e+002 1.0e+001 9.7e-001 1.00e-001
 5 8.3e-001 1.9e-017 1.7e-017 -3.73e+000 -2.44e+001 1.0e+000 9.0e-001 1.00e-001
 6 1.6e-001 1.9e-017 3.7e-018 -4.28e+000 -8.17e+000 1.2e+000 9.4e-001 1.00e-001
 7 2.3e-002 1.9e-017 5.6e-018 -4.41e+000 -4.99e+000 1.2e+000 9.6e-001 1.00e-001
 8 3.1e-003 1.9e-017 1.7e-017 -4.43e+000 -4.51e+000 1.1e+000 9.8e-001 1.00e-001
 9 3.5e-004 1.9e-017 7.5e-017 -4.43e+000 -4.44e+000 1.1e+000 9.9e-001 1.00e-001
10 3.7e-005 1.9e-017 8.9e-017 -4.43e+000 -4.43e+000 1.1e+000 9.9e-001 1.00e-001
11 3.9e-006 1.9e-017 1.1e-016 -4.43e+000 -4.43e+000 1.1e+000 1.0e+000 1.00e-001
12 3.9e-007 1.9e-017 2.9e-016 -4.43e+000 -4.43e+000 1.0e+000 1.0e+000 1.00e-001
13 3.9e-008 2.8e-017 3.3e-016 -4.43e+000 -4.43e+000 9.0e-001 9.0e-001 1.00e-001

phase.value  = pdFEAS    
   Iteration = 13
          mu = +3.9165627754300659e-008
relative gap = +2.2082103690660556e-007
        gap  = +9.7914069208115961e-007
     digits  = +6.6559595551400648e+000
objValPrimal = -4.4340910526013317e+000
objValDual   = -4.4340920317420238e+000
p.feas.error = +2.6645352591003757e-015
d.feas.error = +3.2827074392116629e-012
total time   = 0.086443
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
 Predictor time  =       0.025494,  32.920546
 Corrector time  =       0.011938,  15.415607
 Make bMat time  =       0.013970,  18.039540
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.011975,  15.463385
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.011975,  15.463385
 Make rMat time  =       0.000998,  1.288723
 Make gVec Mul   =       0.001016,  1.311967
 Make gVec time  =       0.003521,  4.546687
 Cholesky bMat   =       0.000997,  1.287432
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.035022,  45.224106
 solve           =       0.000000,  0.000000
 sumDz           =       0.000996,  1.286140
 makedX          =       0.000996,  1.286140
 symmetriseDx    =       0.015954,  20.601490
 makedXdZ        =       0.017946,  23.173771
 xMatTime        =       0.000000,  0.000000
 zMatTime        =       0.003989,  5.151018
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.019955,  25.768004
 EigzMatTime     =       0.015067,  19.456102
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000998,  1.288723
 EigTime         =       0.035022,  45.224106
 sub_total_bMat  =       0.063471,  81.960460
 Main Loop       =       0.077441,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.009002,  11.624333
 Total           =       0.086443,  111.624333

xVec = 
{-8.387e-003,+1.870e-002,+5.063e-003,-1.103e-002,+1.269e-002,-1.210e-002,-6.002e-004,-1.096e-002,-1.122e-002,+1.383e-002}
xMat = 
{
{ {+5.112e+000,+6.208e-001,-1.173e+000,-3.008e-001,-1.215e+000,+2.657e-002,-5.251e-001,-3.322e-001,-1.269e+000,+2.533e-001,+5.787e-001,+1.669e-001,-1.211e+000,-1.111e+000,+9.538e-002,-6.714e-002,-4.032e-001,-2.861e-001,+1.684e-001,-1.019e+000,+1.047e+000,-3.639e-001,+8.892e-002,-7.058e-001,+4.307e-001 },
  {+6.208e-001,+7.139e+000,+8.640e-001,+1.063e-001,-8.932e-002,-3.770e-001,+8.828e-001,-1.014e+000,+5.909e-002,+3.909e-001,+4.068e-001,-5.969e-004,+5.552e-001,-1.948e-001,-5.262e-001,+3.389e-001,+8.952e-002,-4.779e-001,+3.089e-002,-4.823e-001,-6.185e-001,-9.653e-001,+5.967e-001,-6.540e-001,-7.529e-001 },
  {-1.173e+000,+8.640e-001,+6.655e+000,+4.952e-001,+3.839e-001,-3.834e-001,+1.553e-001,-3.945e-001,+6.162e-001,+1.297e+000,-1.429e+000,+9.566e-001,+4.894e-001,+4.544e-001,-7.212e-001,+6.859e-001,+1.042e+000,-1.639e-001,-1.320e+000,-8.433e-002,+7.486e-001,-2.750e-001,+6.483e-003,+1.062e+000,-9.128e-001 },
  {-3.008e-001,+1.063e-001,+4.952e-001,+4.197e+000,+6.778e-001,-3.022e-001,-1.819e-001,-3.336e-001,+1.213e-001,-5.562e-001,-6.155e-001,+3.099e-001,+9.654e-001,+4.470e-001,-1.267e+000,+7.237e-002,-3.857e-001,-4.326e-001,-7.392e-001,-1.024e-001,-8.987e-001,-1.151e-001,-1.191e-001,+3.827e-001,+4.052e-001 },
  {-1.215e+000,-8.932e-002,+3.839e-001,+6.778e-001,+5.326e+000,+4.370e-001,-5.345e-001,-8.209e-001,+8.946e-002,+1.173e-001,-7.099e-001,+7.813e-001,-5.276e-001,+8.511e-001,-2.001e+000,+4.403e-001,-1.083e+000,-5.829e-001,+1.680e-001,-3.054e-002,+1.863e-001,-1.228e+000,-1.228e+000,-1.167e+000,+2.179e-001 },
  {+2.657e-002,-3.770e-001,-3.834e-001,-3.022e-001,+4.370e-001,+6.665e+000,-4.533e-001,-6.192e-001,+5.280e-001,-1.290e-001,-1.266e+000,-2.544e-001,+4.516e-001,-2.832e-001,-6.196e-001,+3.059e-001,+1.483e-001,-1.101e+000,-7.846e-001,-1.515e+000,+1.756e-001,+1.126e+000,-9.466e-001,-6.686e-001,-2.630e+000 },
  {-5.251e-001,+8.828e-001,+1.553e-001,-1.819e-001,-5.345e-001,-4.533e-001,+6.074e+000,-2.256e-001,+6.963e-001,+2.490e-001,-9.423e-001,+5.712e-001,-9.155e-001,-1.499e+000,-1.253e-001,-1.282e+000,-1.088e+000,-8.295e-001,-2.327e-001,+2.361e-001,-4.233e-001,-7.862e-001,-3.408e-001,-3.959e-001,-5.101e-002 },
  {-3.322e-001,-1.014e+000,-3.945e-001,-3.336e-001,-8.209e-001,-6.192e-001,-2.256e-001,+3.546e+000,-2.895e-001,-1.107e+000,+1.271e+000,-5.240e-001,-5.910e-001,+4.924e-001,+4.365e-001,-5.085e-001,+3.563e-001,-2.783e-001,+6.706e-001,-2.048e-001,-1.771e-001,+1.475e-001,+1.540e-002,+2.491e-001,-1.017e+000 },
  {-1.269e+000,+5.909e-002,+6.162e-001,+1.213e-001,+8.946e-002,+5.280e-001,+6.963e-001,-2.895e-001,+4.958e+000,+4.505e-002,-2.960e-001,+3.639e-001,-6.199e-001,-5.921e-002,-1.036e+000,-9.842e-001,-1.702e-001,-9.839e-002,+8.810e-001,+3.924e-001,-1.325e-001,+8.918e-001,-3.456e-001,-2.139e-001,+1.407e+000 },
  {+2.533e-001,+3.909e-001,+1.297e+000,-5.562e-001,+1.173e-001,-1.290e-001,+2.490e-001,-1.107e+000,+4.505e-002,+6.417e+000,+2.192e-001,-3.939e-001,-9.584e-001,+6.661e-001,-3.169e-001,-6.547e-001,-4.135e-001,+8.152e-001,-1.111e+000,+6.668e-001,+3.841e-002,+7.955e-001,-5.276e-001,+1.381e-001,-4.204e-001 },
  {+5.787e-001,+4.068e-001,-1.429e+000,-6.155e-001,-7.099e-001,-1.266e+000,-9.423e-001,+1.271e+000,-2.960e-001,+2.192e-001,+4.341e+000,-4.595e-001,-1.292e-001,+4.835e-001,+2.127e-001,+1.427e-001,-7.225e-001,+8.240e-003,-7.169e-001,+8.146e-001,+5.189e-001,+1.287e-001,-2.872e-001,-4.903e-001,-3.058e-002 },
  {+1.669e-001,-5.969e-004,+9.566e-001,+3.099e-001,+7.813e-001,-2.544e-001,+5.712e-001,-5.240e-001,+3.639e-001,-3.939e-001,-4.595e-001,+4.087e+000,+3.828e-001,+7.534e-001,-6.649e-001,+5.695e-002,-1.877e-001,+2.320e-001,+6.645e-002,-4.301e-001,-8.556e-001,+1.061e+000,+3.738e-001,+5.549e-001,+7.926e-001 },
  {-1.211e+000,+5.552e-001,+4.894e-001,+9.654e-001,-5.276e-001,+4.516e-001,-9.155e-001,-5.910e-001,-6.199e-001,-9.584e-001,-1.292e-001,+3.828e-001,+5.845e+000,-3.196e-001,+1.182e+000,+1.025e+000,+3.251e-001,-1.048e+000,+2.972e-002,-8.718e-001,-5.639e-001,-7.610e-001,-7.218e-001,+9.619e-001,+1.003e+000 },
  {-1.111e+000,-1.948e-001,+4.544e-001,+4.470e-001,+8.511e-001,-2.832e-001,-1.499e+000,+4.924e-001,-5.921e-002,+6.661e-001,+4.835e-001,+7.534e-001,-3.196e-001,+6.389e+000,-1.010e+000,-8.559e-001,+9.383e-001,+6.928e-001,+4.279e-001,-9.341e-001,+6.154e-001,-2.813e-001,-1.079e+000,-1.069e-001,-7.043e-002 },
  {+9.538e-002,-5.262e-001,-7.212e-001,-1.267e+000,-2.001e+000,-6.196e-001,-1.253e-001,+4.365e-001,-1.036e+000,-3.169e-001,+2.127e-001,-6.649e-001,+1.182e+000,-1.010e+000,+5.375e+000,-7.454e-001,+5.794e-001,-8.709e-002,-1.782e+000,-5.110e-001,-5.968e-001,+1.920e-002,-3.755e-001,+2.403e-002,-4.829e-001 },
  {-6.714e-002,+3.389e-001,+6.859e-001,+7.237e-002,+4.403e-001,+3.059e-001,-1.282e+000,-5.085e-001,-9.842e-001,-6.547e-001,+1.427e-001,+5.695e-002,+1.025e+000,-8.559e-001,-7.454e-001,+5.411e+000,+2.666e-001,-6.427e-001,+1.855e+000,+3.681e-001,-1.770e+000,-4.965e-001,-2.112e-002,+3.860e-001,-4.444e-001 },
  {-4.032e-001,+8.952e-002,+1.042e+000,-3.857e-001,-1.083e+000,+1.483e-001,-1.088e+000,+3.563e-001,-1.702e-001,-4.135e-001,-7.225e-001,-1.877e-001,+3.251e-001,+9.383e-001,+5.794e-001,+2.666e-001,+6.355e+000,-4.762e-001,-7.231e-002,+1.418e+000,+5.922e-001,-6.221e-001,-1.803e-001,+3.183e-003,-4.961e-001 },
  {-2.861e-001,-4.779e-001,-1.639e-001,-4.326e-001,-5.829e-001,-1.101e+000,-8.295e-001,-2.783e-001,-9.839e-002,+8.152e-001,+8.240e-003,+2.320e-001,-1.048e+000,+6.928e-001,-8.709e-002,-6.427e-001,-4.762e-001,+5.548e+000,-1.508e-001,+2.997e-001,-7.941e-002,+1.675e-002,+6.079e-001,+1.642e-001,-8.270e-001 },
  {+1.684e-001,+3.089e-002,-1.320e+000,-7.392e-001,+1.680e-001,-7.846e-001,-2.327e-001,+6.706e-001,+8.810e-001,-1.111e+000,-7.169e-001,+6.645e-002,+2.972e-002,+4.279e-001,-1.782e+000,+1.855e+000,-7.231e-002,-1.508e-001,+6.374e+000,+7.770e-001,+1.910e-001,+1.399e-001,+5.494e-002,-1.154e+000,+5.446e-001 },
  {-1.019e+000,-4.823e-001,-8.433e-002,-1.024e-001,-3.054e-002,-1.515e+000,+2.361e-001,-2.048e-001,+3.924e-001,+6.668e-001,+8.146e-001,-4.301e-001,-8.718e-001,-9.341e-001,-5.110e-001,+3.681e-001,+1.418e+000,+2.997e-001,+7.770e-001,+6.208e+000,+6.491e-001,+1.892e-001,+2.725e-002,+9.987e-002,-1.061e+000 },
  {+1.047e+000,-6.185e-001,+7.486e-001,-8.987e-001,+1.863e-001,+1.756e-001,-4.233e-001,-1.771e-001,-1.325e-001,+3.841e-002,+5.189e-001,-8.556e-001,-5.639e-001,+6.154e-001,-5.968e-001,-1.770e+000,+5.922e-001,-7.941e-002,+1.910e-001,+6.491e-001,+3.996e+000,-2.482e-001,-5.309e-001,-2.245e-001,-8.669e-001 },
  {-3.639e-001,-9.653e-001,-2.750e-001,-1.151e-001,-1.228e+000,+1.126e+000,-7.862e-001,+1.475e-001,+8.918e-001,+7.955e-001,+1.287e-001,+1.061e+000,-7.610e-001,-2.813e-001,+1.920e-002,-4.965e-001,-6.221e-001,+1.675e-002,+1.399e-001,+1.892e-001,-2.482e-001,+4.717e+000,-6.003e-001,-5.037e-001,+3.984e-001 },
  {+8.892e-002,+5.967e-001,+6.483e-003,-1.191e-001,-1.228e+000,-9.466e-001,-3.408e-001,+1.540e-002,-3.456e-001,-5.276e-001,-2.872e-001,+3.738e-001,-7.218e-001,-1.079e+000,-3.755e-001,-2.112e-002,-1.803e-001,+6.079e-001,+5.494e-002,+2.725e-002,-5.309e-001,-6.003e-001,+6.245e+000,+9.095e-001,-2.597e-001 },
  {-7.058e-001,-6.540e-001,+1.062e+000,+3.827e-001,-1.167e+000,-6.686e-001,-3.959e-001,+2.491e-001,-2.139e-001,+1.381e-001,-4.903e-001,+5.549e-001,+9.619e-001,-1.069e-001,+2.403e-002,+3.860e-001,+3.183e-003,+1.642e-001,-1.154e+000,+9.987e-002,-2.245e-001,-5.037e-001,+9.095e-001,+6.093e+000,-1.170e+000 },
  {+4.307e-001,-7.529e-001,-9.128e-001,+4.052e-001,+2.179e-001,-2.630e+000,-5.101e-002,-1.017e+000,+1.407e+000,-4.204e-001,-3.058e-002,+7.926e-001,+1.003e+000,-7.043e-002,-4.829e-001,-4.444e-001,-4.961e-001,-8.270e-001,+5.446e-001,-1.061e+000,-8.669e-001,+3.984e-001,-2.597e-001,-1.170e+000,+5.493e+000 }   }
}
yMat = 
{
{ {+8.466e-002,-3.000e-002,+3.382e-002,-3.068e-002,+7.802e-002,-2.932e-002,+4.938e-002,-4.660e-002,+1.753e-002,-3.511e-002,+4.041e-002,-8.349e-002,+5.732e-002,+3.191e-002,-9.867e-003,-3.633e-002,+3.255e-002,+1.065e-002,+1.382e-002,-4.949e-003,-8.149e-002,+7.538e-002,+2.653e-002,+1.804e-002,-4.795e-002 },
  {-3.000e-002,+4.095e-002,+2.866e-002,+5.975e-002,+1.876e-002,+1.184e-001,+2.445e-002,+5.214e-002,-5.153e-002,+1.594e-002,+3.869e-002,+9.986e-003,-5.767e-002,-3.501e-003,+8.441e-002,+1.996e-002,-2.221e-003,+4.623e-002,+4.796e-002,+3.319e-002,+5.668e-002,-2.060e-002,+1.450e-002,+4.741e-002,+1.365e-001 },
  {+3.382e-002,+2.866e-002,+6.800e-002,+5.326e-002,+9.338e-002,+1.331e-001,+7.596e-002,+2.915e-002,-5.374e-002,-9.344e-003,+8.721e-002,-5.963e-002,-2.718e-002,+2.322e-002,+1.045e-001,-5.014e-003,+2.549e-002,+7.128e-002,+7.638e-002,+4.016e-002,+4.710e-003,+3.831e-002,+4.263e-002,+7.933e-002,+1.411e-001 },
  {-3.068e-002,+5.975e-002,+5.326e-002,+8.990e-002,+4.653e-002,+1.848e-001,+4.972e-002,+7.432e-002,-7.940e-002,+1.836e-002,+7.080e-002,-1.334e-003,-8.100e-002,+1.020e-003,+1.340e-001,+2.459e-002,+3.215e-003,+7.674e-002,+8.020e-002,+5.247e-002,+7.435e-002,-1.747e-002,+2.891e-002,+8.019e-002,+2.100e-001 },
  {+7.802e-002,+1.876e-002,+9.338e-002,+4.653e-002,+1.429e-001,+1.383e-001,+1.097e-001,+1.159e-002,-5.321e-002,-2.701e-002,+1.184e-001,-1.069e-001,-4.359e-003,+4.136e-002,+1.148e-001,-2.263e-002,+4.425e-002,+8.635e-002,+9.365e-002,+4.355e-002,-3.255e-002,+7.883e-002,+6.103e-002,+9.898e-002,+1.387e-001 },
  {-2.932e-002,+1.184e-001,+1.331e-001,+1.848e-001,+1.383e-001,+3.951e-001,+1.324e-001,+1.431e-001,-1.675e-001,+2.461e-002,+1.749e-001,-4.092e-002,-1.530e-001,+1.677e-002,+2.917e-001,+3.783e-002,+2.191e-002,+1.745e-001,+1.836e-001,+1.137e-001,+1.273e-001,-4.325e-003,+7.597e-002,+1.855e-001,+4.425e-001 },
  {+4.938e-002,+2.445e-002,+7.596e-002,+4.972e-002,+1.097e-001,+1.324e-001,+8.685e-002,+2.212e-002,-5.247e-002,-1.565e-002,+9.692e-002,-7.582e-002,-1.826e-002,+2.942e-002,+1.062e-001,-1.139e-002,+3.187e-002,+7.539e-002,+8.120e-002,+4.061e-002,-9.074e-003,+5.243e-002,+4.854e-002,+8.496e-002,+1.374e-001 },
  {-4.660e-002,+5.214e-002,+2.915e-002,+7.432e-002,+1.159e-002,+1.431e-001,+2.212e-002,+6.752e-002,-6.290e-002,+2.343e-002,+4.006e-002,+2.292e-002,-7.546e-002,-8.390e-003,+1.005e-001,+2.832e-002,-6.971e-003,+5.290e-002,+5.451e-002,+3.967e-002,+7.752e-002,-3.431e-002,+1.348e-002,+5.330e-002,+1.668e-001 },
  {+1.753e-002,-5.153e-002,-5.374e-002,-7.940e-002,-5.321e-002,-1.675e-001,-5.247e-002,-6.290e-002,+7.136e-002,-1.249e-002,-7.086e-002,+1.201e-002,+6.771e-002,-5.063e-003,-1.230e-001,-1.811e-002,-7.180e-003,-7.253e-002,-7.614e-002,-4.801e-002,-5.842e-002,+6.471e-003,-3.022e-002,-7.668e-002,-1.886e-001 },
  {-3.511e-002,+1.594e-002,-9.344e-003,+1.836e-002,-2.701e-002,+2.461e-002,-1.565e-002,+2.343e-002,-1.249e-002,+1.496e-002,-1.065e-002,+3.237e-002,-2.808e-002,-1.234e-002,+1.341e-002,+1.588e-002,-1.243e-002,+1.344e-003,+3.570e-004,+5.674e-003,+3.700e-002,-3.056e-002,-8.250e-003,-1.281e-003,+3.366e-002 },
  {+4.041e-002,+3.869e-002,+8.721e-002,+7.080e-002,+1.184e-001,+1.749e-001,+9.692e-002,+4.006e-002,-7.086e-002,-1.065e-002,+1.120e-001,-7.412e-002,-3.796e-002,+2.889e-002,+1.368e-001,-4.952e-003,+3.182e-002,+9.251e-002,+9.902e-002,+5.260e-002,+9.703e-003,+4.667e-002,+5.445e-002,+1.027e-001,+1.861e-001 },
  {-8.349e-002,+9.986e-003,-5.963e-002,-1.334e-003,-1.069e-001,-4.092e-002,-7.582e-002,+2.292e-002,+1.201e-002,+3.237e-002,-7.412e-002,+9.501e-002,-3.238e-002,-3.652e-002,-4.257e-002,+3.125e-002,-3.812e-002,-4.283e-002,-4.780e-002,-1.544e-002,+6.240e-002,-7.830e-002,-4.161e-002,-5.257e-002,-2.997e-002 },
  {+5.732e-002,-5.767e-002,-2.718e-002,-8.100e-002,-4.359e-003,-1.530e-001,-1.826e-002,-7.546e-002,+6.771e-002,-2.808e-002,-3.796e-002,-3.238e-002,+8.485e-002,+1.199e-002,-1.064e-001,-3.333e-002,+1.056e-002,-5.440e-002,-5.578e-002,-4.209e-002,-8.943e-002,+4.351e-002,-1.148e-002,-5.409e-002,-1.797e-001 },
  {+3.191e-002,-3.501e-003,+2.322e-002,+1.020e-003,+4.136e-002,+1.677e-002,+2.942e-002,-8.390e-003,-5.063e-003,-1.234e-002,+2.889e-002,-3.652e-002,+1.199e-002,+1.404e-002,+1.712e-002,-1.187e-002,+1.467e-002,+1.689e-002,+1.882e-002,+6.230e-003,-2.356e-002,+2.999e-002,+1.616e-002,+2.066e-002,+1.270e-002 },
  {-9.867e-003,+8.441e-002,+1.045e-001,+1.340e-001,+1.148e-001,+2.917e-001,+1.062e-001,+1.005e-001,-1.230e-001,+1.341e-002,+1.368e-001,-4.257e-002,-1.064e-001,+1.712e-002,+2.171e-001,+2.315e-002,+2.106e-002,+1.322e-001,+1.395e-001,+8.447e-002,+8.369e-002,+7.526e-003,+6.068e-002,+1.415e-001,+3.245e-001 },
  {-3.633e-002,+1.996e-002,-5.014e-003,+2.459e-002,-2.263e-002,+3.783e-002,-1.139e-002,+2.832e-002,-1.811e-002,+1.588e-002,-4.952e-003,+3.125e-002,-3.333e-002,-1.187e-002,+2.315e-002,+1.725e-002,-1.179e-002,+7.117e-003,+6.424e-003,+9.472e-003,+4.147e-002,-3.092e-002,-5.799e-003,+4.837e-003,+4.851e-002 },
  {+3.255e-002,-2.221e-003,+2.549e-002,+3.215e-003,+4.425e-002,+2.191e-002,+3.187e-002,-6.971e-003,-7.180e-003,-1.243e-002,+3.182e-002,-3.812e-002,+1.056e-002,+1.467e-002,+2.106e-002,-1.179e-002,+1.538e-002,+1.945e-002,+2.155e-002,+7.753e-003,-2.279e-002,+3.086e-002,+1.754e-002,+2.346e-002,+1.827e-002 },
  {+1.065e-002,+4.623e-002,+7.128e-002,+7.674e-002,+8.635e-002,+1.745e-001,+7.539e-002,+5.290e-002,-7.253e-002,+1.344e-003,+9.251e-002,-4.283e-002,-5.440e-002,+1.689e-002,+1.322e-001,+7.117e-003,+1.945e-002,+8.380e-002,+8.892e-002,+5.122e-002,+3.559e-002,+1.956e-002,+4.275e-002,+9.100e-002,+1.911e-001 },
  {+1.382e-002,+4.796e-002,+7.638e-002,+8.020e-002,+9.365e-002,+1.836e-001,+8.120e-002,+5.451e-002,-7.614e-002,+3.570e-004,+9.902e-002,-4.780e-002,-5.578e-002,+1.882e-002,+1.395e-001,+6.424e-003,+2.155e-002,+8.892e-002,+9.442e-002,+5.400e-002,+3.516e-002,+2.297e-002,+4.600e-002,+9.675e-002,+2.005e-001 },
  {-4.949e-003,+3.319e-002,+4.016e-002,+5.247e-002,+4.355e-002,+1.137e-001,+4.061e-002,+3.967e-002,-4.801e-002,+5.674e-003,+5.260e-002,-1.544e-002,-4.209e-002,+6.230e-003,+8.447e-002,+9.472e-003,+7.753e-003,+5.122e-002,+5.400e-002,+3.288e-002,+3.359e-002,+1.930e-003,+2.323e-002,+5.473e-002,+1.267e-001 },
  {-8.149e-002,+5.668e-002,+4.710e-003,+7.435e-002,-3.255e-002,+1.273e-001,-9.074e-003,+7.752e-002,-5.842e-002,+3.700e-002,+9.703e-003,+6.240e-002,-8.943e-002,-2.356e-002,+8.369e-002,+4.147e-002,-2.279e-002,+3.559e-002,+3.516e-002,+3.359e-002,+1.039e-001,-6.696e-002,-3.627e-003,+3.197e-002,+1.557e-001 },
  {+7.538e-002,-2.060e-002,+3.831e-002,-1.747e-002,+7.883e-002,-4.325e-003,+5.243e-002,-3.431e-002,+6.471e-003,-3.056e-002,+4.667e-002,-7.830e-002,+4.351e-002,+2.999e-002,+7.526e-003,-3.092e-002,+3.086e-002,+1.956e-002,+2.297e-002,+1.930e-003,-6.696e-002,+6.836e-002,+2.844e-002,+2.691e-002,-1.860e-002 },
  {+2.653e-002,+1.450e-002,+4.263e-002,+2.891e-002,+6.103e-002,+7.597e-002,+4.854e-002,+1.348e-002,-3.022e-002,-8.250e-003,+5.445e-002,-4.161e-002,-1.148e-002,+1.616e-002,+6.068e-002,-5.799e-003,+1.754e-002,+4.275e-002,+4.600e-002,+2.323e-002,-3.627e-003,+2.844e-002,+2.715e-002,+4.806e-002,+7.917e-002 },
  {+1.804e-002,+4.741e-002,+7.933e-002,+8.019e-002,+9.898e-002,+1.855e-001,+8.496e-002,+5.330e-002,-7.668e-002,-1.281e-003,+1.027e-001,-5.257e-002,-5.409e-002,+2.066e-002,+1.415e-001,+4.837e-003,+2.346e-002,+9.100e-002,+9.675e-002,+5.473e-002,+3.197e-002,+2.691e-002,+4.806e-002,+9.932e-002,+2.019e-001 },
  {-4.795e-002,+1.365e-001,+1.411e-001,+2.100e-001,+1.387e-001,+4.425e-001,+1.374e-001,+1.668e-001,-1.886e-001,+3.366e-002,+1.861e-001,-2.997e-002,-1.797e-001,+1.270e-002,+3.245e-001,+4.851e-002,+1.827e-002,+1.911e-001,+2.005e-001,+1.267e-001,+1.557e-001,-1.860e-002,+7.917e-002,+2.019e-001,+4.983e-001 }   }
}
    main loop time = 0.077441
        total time = 0.086443
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.009002
SDPA end at [Thu Jul 15 21:27:26 2021]
ALL TIME = 0.088716
