SDPA start at [Wed Nov 11 18:14:18 2020]
param  is ./param.sdpa 
data   is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseNegativeDefinite_SMALL\sample_10.dat-s  : sparse
out    is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseNegativeDefinite_SMALL\sample_10.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -2.90e+003 8.9e-001 1.0e+000 2.00e-001
 1 1.9e+003 1.1e-001 1.5e-016 +7.26e+001 -2.72e+003 1.0e+000 1.8e+000 2.00e-001
 2 2.1e+002 2.9e-017 1.9e-016 +3.03e+001 -5.93e+002 5.5e+000 9.2e-001 1.00e-001
 3 2.7e+001 2.0e-017 3.8e-017 -4.57e+000 -8.51e+001 2.0e+000 9.5e-001 1.00e-001
 4 3.2e+000 2.0e-017 7.2e-018 -8.26e+000 -1.78e+001 3.4e+000 8.7e-001 1.00e-001
 5 4.4e-001 2.4e-017 1.8e-017 -9.27e+000 -1.06e+001 2.1e+000 6.9e-001 1.00e-001
 6 7.7e-002 3.9e-017 9.7e-017 -9.69e+000 -9.91e+000 9.6e-001 9.6e-001 1.00e-001
 7 1.0e-002 3.9e-017 1.7e-017 -9.75e+000 -9.78e+000 1.1e+000 9.7e-001 1.00e-001
 8 1.1e-003 5.9e-017 1.2e-018 -9.76e+000 -9.76e+000 1.1e+000 9.7e-001 1.00e-001
 9 1.2e-004 5.4e-017 7.2e-018 -9.76e+000 -9.76e+000 1.1e+000 9.8e-001 1.00e-001
10 1.2e-005 3.9e-017 5.1e-017 -9.76e+000 -9.76e+000 1.1e+000 9.8e-001 1.00e-001
11 1.2e-006 4.4e-017 1.4e-016 -9.76e+000 -9.76e+000 1.1e+000 9.8e-001 1.00e-001
12 1.2e-007 3.9e-017 5.7e-016 -9.76e+000 -9.76e+000 1.1e+000 9.8e-001 1.00e-001

phase.value  = pdOPT     
   Iteration = 12
          mu = +1.2457149326886943e-007
relative gap = +3.8285329397277680e-008
        gap  = +3.7371570016375699e-007
     digits  = +7.4169676119942389e+000
objValPrimal = -9.7613289187585295e+000
objValDual   = -9.7613292924742296e+000
p.feas.error = +3.5527136788005009e-015
d.feas.error = +1.6910917111090384e-012
total time   = 0.008351
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
 Predictor time  =       0.003963,  50.471218
 Corrector time  =       0.001504,  19.154356
 Make bMat time  =       0.001984,  25.267448
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.000000,  0.000000
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.000978,  12.455425
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000000,  0.000000
 solve           =       0.000000,  0.000000
 sumDz           =       0.000994,  12.659195
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.001511,  19.243505
 makedXdZ        =       0.002505,  31.902700
 xMatTime        =       0.000000,  0.000000
 zMatTime        =       0.000993,  12.646460
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000000,  0.000000
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000899,  11.449312
 EigTime         =       0.000000,  0.000000
 sub_total_bMat  =       0.005868,  74.732552
 Main Loop       =       0.007852,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000499,  6.355069
 Total           =       0.008351,  106.355069

xVec = 
{-9.397e-001,+7.088e-001}
xMat = 
{
{ {+1.117e+001,-5.593e+000,+7.241e+000 },
  {-5.593e+000,+2.870e+000,-3.812e+000 },
  {+7.241e+000,-3.812e+000,+5.197e+000 }   }
}
yMat = 
{
{ {+5.459e-002,+2.102e-001,+7.816e-002 },
  {+2.102e-001,+8.096e-001,+3.010e-001 },
  {+7.816e-002,+3.010e-001,+1.119e-001 }   }
}
    main loop time = 0.007852
        total time = 0.008351
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000499
SDPA end at [Wed Nov 11 18:14:18 2020]
ALL TIME = 0.008847
