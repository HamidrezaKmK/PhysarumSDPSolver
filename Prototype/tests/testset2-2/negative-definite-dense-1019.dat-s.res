SDPA start at [Thu Jul 15 21:27:25 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset2\negative-definite-dense-1019.dat-s  : sparse
"Dense tests with negative definite C matrices that have dimension of 10 and 1-5 constraints"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset2\negative-definite-dense-1019.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -7.00e+003 9.2e-001 1.0e+000 2.00e-001
 1 1.8e+003 8.1e-002 2.1e-016 +2.36e+000 -8.58e+003 1.0e+000 1.6e+000 2.00e-001
 2 2.4e+002 9.4e-018 4.8e-016 +8.96e-001 -2.41e+003 8.7e+001 9.6e-001 1.00e-001
 3 3.2e+001 9.4e-018 3.4e-016 -4.74e+000 -3.21e+002 9.7e-001 9.7e-001 1.00e-001
 4 4.0e+000 9.4e-018 2.4e-017 -4.41e+000 -4.45e+001 1.7e+000 9.0e-001 1.00e-001
 5 7.1e-001 9.4e-018 5.0e-018 -5.91e+000 -1.30e+001 1.1e+000 8.0e-001 1.00e-001
 6 1.8e-001 9.4e-018 6.7e-018 -6.49e+000 -8.34e+000 1.3e+000 9.4e-001 1.00e-001
 7 2.6e-002 9.4e-018 8.3e-019 -6.59e+000 -6.85e+000 1.2e+000 9.7e-001 1.00e-001
 8 3.0e-003 1.9e-017 1.7e-018 -6.60e+000 -6.63e+000 1.2e+000 9.9e-001 1.00e-001
 9 3.2e-004 1.9e-017 3.3e-018 -6.61e+000 -6.61e+000 1.2e+000 9.9e-001 1.00e-001
10 3.3e-005 1.9e-017 3.3e-018 -6.61e+000 -6.61e+000 1.2e+000 9.9e-001 1.00e-001
11 3.3e-006 1.9e-017 8.3e-019 -6.61e+000 -6.61e+000 1.2e+000 9.9e-001 1.00e-001
12 3.3e-007 1.9e-017 6.7e-018 -6.61e+000 -6.61e+000 1.2e+000 9.9e-001 1.00e-001
13 3.3e-008 2.8e-017 1.8e-017 -6.61e+000 -6.61e+000 1.2e+000 9.9e-001 1.00e-001

phase.value  = pdOPT     
   Iteration = 13
          mu = +3.2725501819541594e-008
relative gap = +4.9543748107176855e-008
        gap  = +3.2725502663311090e-007
     digits  = +7.3050111410547833e+000
objValPrimal = -6.6053746643965514e+000
objValDual   = -6.6053749916515780e+000
p.feas.error = +2.6645352591003757e-015
d.feas.error = +7.8159700933611020e-014
total time   = 0.021095
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
 Predictor time  =       0.005096,  25.353234
 Corrector time  =       0.004033,  20.064677
 Make bMat time  =       0.000000,  0.000000
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.002135,  10.621891
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.000000,  0.000000
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.007980,  39.701493
 solve           =       0.000000,  0.000000
 sumDz           =       0.000997,  4.960199
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.005997,  29.835821
 makedXdZ        =       0.006994,  34.796020
 xMatTime        =       0.000000,  0.000000
 zMatTime        =       0.001994,  9.920398
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.004985,  24.800995
 EigzMatTime     =       0.001998,  9.940299
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000997,  4.960199
 EigTime         =       0.006983,  34.741294
 sub_total_bMat  =       0.020100,  100.000000
 Main Loop       =       0.020100,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000995,  4.950249
 Total           =       0.021095,  104.950249

xVec = 
{+8.666e-003,+1.134e-001,+7.777e-002}
xMat = 
{
{ {+5.028e+000,-4.341e-002,-1.643e+000,-7.211e-001,+5.434e-001,-3.197e+000,-1.905e-001,+3.996e+000,+5.937e-001,-9.829e-001 },
  {-4.341e-002,+5.837e+000,-7.505e-001,+2.559e+000,+2.277e+000,-1.450e+000,+1.406e-001,-3.818e-001,-1.367e+000,-1.811e+000 },
  {-1.643e+000,-7.505e-001,+7.837e+000,+6.342e-001,-2.409e+000,+3.150e+000,-7.258e-001,+1.296e+000,-6.039e-001,-3.538e+000 },
  {-7.211e-001,+2.559e+000,+6.342e-001,+3.862e+000,+7.466e-001,-3.326e-002,-5.372e-001,+2.017e+000,-1.342e+000,+1.310e+000 },
  {+5.434e-001,+2.277e+000,-2.409e+000,+7.466e-001,+6.147e+000,-1.741e+000,-1.691e+000,+9.001e-001,-5.179e-002,-6.696e-001 },
  {-3.197e+000,-1.450e+000,+3.150e+000,-3.326e-002,-1.741e+000,+5.795e+000,-1.297e+000,-2.425e+000,-7.010e-001,+6.829e-001 },
  {-1.905e-001,+1.406e-001,-7.258e-001,-5.372e-001,-1.691e+000,-1.297e+000,+5.821e+000,+6.597e-001,+8.352e-001,+2.933e+000 },
  {+3.996e+000,-3.818e-001,+1.296e+000,+2.017e+000,+9.001e-001,-2.425e+000,+6.597e-001,+8.201e+000,+2.029e-001,+1.782e+000 },
  {+5.937e-001,-1.367e+000,-6.039e-001,-1.342e+000,-5.179e-002,-7.010e-001,+8.352e-001,+2.029e-001,+5.975e+000,-2.512e-001 },
  {-9.829e-001,-1.811e+000,-3.538e+000,+1.310e+000,-6.696e-001,+6.829e-001,+2.933e+000,+1.782e+000,-2.512e-001,+8.890e+000 }   }
}
yMat = 
{
{ {+2.874e-001,-4.792e-002,+2.375e-001,+1.245e-001,+1.097e-001,-8.300e-002,+1.045e-002,-2.846e-001,+1.887e-002,+1.670e-001 },
  {-4.792e-002,+7.990e-003,-3.960e-002,-2.075e-002,-1.829e-002,+1.384e-002,-1.743e-003,+4.745e-002,-3.147e-003,-2.784e-002 },
  {+2.375e-001,-3.960e-002,+1.963e-001,+1.029e-001,+9.065e-002,-6.860e-002,+8.640e-003,-2.352e-001,+1.560e-002,+1.380e-001 },
  {+1.245e-001,-2.075e-002,+1.029e-001,+5.390e-002,+4.750e-002,-3.595e-002,+4.527e-003,-1.232e-001,+8.173e-003,+7.231e-002 },
  {+1.097e-001,-1.829e-002,+9.065e-002,+4.750e-002,+4.186e-002,-3.168e-002,+3.990e-003,-1.086e-001,+7.203e-003,+6.372e-002 },
  {-8.300e-002,+1.384e-002,-6.860e-002,-3.595e-002,-3.168e-002,+2.397e-002,-3.019e-003,+8.219e-002,-5.451e-003,-4.822e-002 },
  {+1.045e-002,-1.743e-003,+8.640e-003,+4.527e-003,+3.990e-003,-3.019e-003,+3.803e-004,-1.035e-002,+6.865e-004,+6.074e-003 },
  {-2.846e-001,+4.745e-002,-2.352e-001,-1.232e-001,-1.086e-001,+8.219e-002,-1.035e-002,+2.818e-001,-1.869e-002,-1.653e-001 },
  {+1.887e-002,-3.147e-003,+1.560e-002,+8.173e-003,+7.203e-003,-5.451e-003,+6.865e-004,-1.869e-002,+1.239e-003,+1.096e-002 },
  {+1.670e-001,-2.784e-002,+1.380e-001,+7.231e-002,+6.372e-002,-4.822e-002,+6.074e-003,-1.653e-001,+1.096e-002,+9.701e-002 }   }
}
    main loop time = 0.020100
        total time = 0.021095
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000995
SDPA end at [Thu Jul 15 21:27:25 2021]
ALL TIME = 0.023023
