SDPA start at [Thu Jul 15 21:27:24 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-22.dat-s  : sparse
"Dense tests with 5 * 5 matrices and 1-3 constraints"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-22.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -2.30e+003 8.6e-001 1.0e+000 2.00e-001
 1 2.3e+003 1.4e-001 2.6e-016 +1.03e+001 -2.92e+003 9.5e-001 2.4e+000 2.00e-001
 2 3.8e+002 6.6e-003 8.5e-016 +2.62e+000 -1.51e+003 1.0e+000 1.1e+000 2.00e-001
 3 6.4e+001 9.1e-018 1.3e-016 +1.59e+000 -3.19e+002 2.2e+001 9.6e-001 1.00e-001
 4 8.1e+000 9.1e-018 9.8e-017 -1.70e+000 -4.20e+001 9.7e-001 9.7e-001 1.00e-001
 5 1.0e+000 9.1e-018 4.1e-018 -1.67e+000 -6.72e+000 1.1e+000 9.1e-001 1.00e-001
 6 1.6e-001 9.1e-018 4.1e-018 -2.17e+000 -2.97e+000 1.2e+000 8.8e-001 1.00e-001
 7 2.8e-002 9.1e-018 8.2e-018 -2.25e+000 -2.40e+000 1.3e+000 9.6e-001 1.00e-001
 8 3.3e-003 9.1e-018 4.1e-018 -2.26e+000 -2.28e+000 1.3e+000 9.7e-001 1.00e-001
 9 3.8e-004 9.1e-018 6.2e-018 -2.27e+000 -2.27e+000 1.4e+000 9.8e-001 1.00e-001
10 4.0e-005 9.1e-018 4.1e-018 -2.27e+000 -2.27e+000 1.4e+000 9.8e-001 1.00e-001
11 4.0e-006 9.1e-018 9.2e-018 -2.27e+000 -2.27e+000 1.4e+000 9.8e-001 1.00e-001
12 4.0e-007 9.1e-018 3.7e-017 -2.27e+000 -2.27e+000 1.4e+000 9.8e-001 1.00e-001
13 4.0e-008 9.1e-018 1.1e-016 -2.27e+000 -2.27e+000 1.4e+000 9.8e-001 1.00e-001

phase.value  = pdOPT     
   Iteration = 13
          mu = +4.0051332383939096e-008
relative gap = +8.8401505667981939e-008
        gap  = +2.0025668767686966e-007
     digits  = +7.0535403379538115e+000
objValPrimal = -2.2653084617981127e+000
objValDual   = -2.2653086620548004e+000
p.feas.error = +8.8817841970012523e-016
d.feas.error = +3.9790393202565610e-013
total time   = 0.012257
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
 Predictor time  =       0.004286,  38.020048
 Corrector time  =       0.003992,  35.412046
 Make bMat time  =       0.000000,  0.000000
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.001834,  16.268961
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.000997,  8.844141
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000983,  8.719950
 solve           =       0.000000,  0.000000
 sumDz           =       0.002499,  22.168012
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.002948,  26.150980
 makedXdZ        =       0.005447,  48.318992
 xMatTime        =       0.001015,  9.003814
 zMatTime        =       0.000000,  0.000000
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000983,  8.719950
 EigzMatTime     =       0.000000,  0.000000
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000997,  8.844141
 EigTime         =       0.000983,  8.719950
 sub_total_bMat  =       0.011273,  100.000000
 Main Loop       =       0.011273,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000984,  8.728821
 Total           =       0.012257,  108.728821

xVec = 
{-5.132e-003,+6.751e-002}
xMat = 
{
{ {+5.344e+000,-2.028e+000,+4.410e-001,-1.147e+000,-1.026e+000 },
  {-2.028e+000,+2.402e+000,-3.073e-001,+1.808e+000,-5.980e-001 },
  {+4.410e-001,-3.073e-001,+1.604e+000,-2.970e+000,-8.929e-001 },
  {-1.147e+000,+1.808e+000,-2.970e+000,+7.350e+000,-7.286e-001 },
  {-1.026e+000,-5.980e-001,-8.929e-001,-7.286e-001,+4.035e+000 }   }
}
yMat = 
{
{ {+4.700e-004,-2.559e-003,+1.937e-002,+9.094e-003,+5.669e-003 },
  {-2.559e-003,+1.394e-002,-1.055e-001,-4.953e-002,-3.088e-002 },
  {+1.937e-002,-1.055e-001,+7.987e-001,+3.749e-001,+2.337e-001 },
  {+9.094e-003,-4.953e-002,+3.749e-001,+1.760e-001,+1.097e-001 },
  {+5.669e-003,-3.088e-002,+2.337e-001,+1.097e-001,+6.839e-002 }   }
}
    main loop time = 0.011273
        total time = 0.012257
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000984
SDPA end at [Thu Jul 15 21:27:24 2021]
ALL TIME = 0.012257