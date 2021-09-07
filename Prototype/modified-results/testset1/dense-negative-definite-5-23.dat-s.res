SDPA start at [Thu Jul 15 21:27:24 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-23.dat-s  : sparse
"Dense tests with 5 * 5 matrices and 1-3 constraints"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-23.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -1.40e+003 8.5e-001 1.0e+000 2.00e-001
 1 2.2e+003 1.5e-001 1.9e-016 +1.05e+001 -1.87e+003 9.6e-001 9.6e-001 2.00e-001
 2 4.5e+002 5.3e-003 2.6e-016 +2.35e+000 -1.88e+003 1.0e+000 1.1e+000 2.00e-001
 3 7.1e+001 9.0e-018 9.6e-017 +2.13e+000 -3.55e+002 3.8e+001 9.8e-001 1.00e-001
 4 8.0e+000 4.5e-018 7.2e-017 -1.66e+000 -4.16e+001 9.7e-001 9.7e-001 1.00e-001
 5 1.0e+000 4.5e-018 2.5e-018 -1.59e+000 -6.72e+000 1.1e+000 9.4e-001 1.00e-001
 6 1.4e-001 4.5e-018 3.0e-018 -2.16e+000 -2.89e+000 1.3e+000 9.5e-001 1.00e-001
 7 1.7e-002 4.5e-018 1.5e-018 -2.23e+000 -2.31e+000 1.2e+000 9.6e-001 1.00e-001
 8 2.0e-003 4.5e-018 8.0e-018 -2.23e+000 -2.24e+000 1.3e+000 9.7e-001 1.00e-001
 9 2.2e-004 4.5e-018 2.0e-017 -2.23e+000 -2.23e+000 1.3e+000 9.7e-001 1.00e-001
10 2.4e-005 9.0e-018 4.2e-017 -2.23e+000 -2.23e+000 1.3e+000 9.8e-001 1.00e-001
11 2.4e-006 4.5e-018 1.3e-016 -2.23e+000 -2.23e+000 1.3e+000 9.8e-001 1.00e-001
12 2.4e-007 4.5e-018 2.2e-016 -2.23e+000 -2.23e+000 1.3e+000 9.8e-001 1.00e-001
13 2.5e-008 5.6e-018 8.9e-016 -2.23e+000 -2.23e+000 1.3e+000 9.8e-001 1.00e-001

phase.value  = pdOPT     
   Iteration = 13
          mu = +2.4531369313685048e-008
relative gap = +5.4913221373570393e-008
        gap  = +1.2265705207070710e-007
     digits  = +7.2603230785319361e+000
objValPrimal = -2.2336523998206874e+000
objValDual   = -2.2336525224777395e+000
p.feas.error = +5.5511151231257827e-016
d.feas.error = +3.1548097467748448e-012
total time   = 0.012699
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
 Predictor time  =       0.005822,  49.688487
 Corrector time  =       0.002903,  24.775967
 Make bMat time  =       0.001995,  17.026543
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000997,  8.509004
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.002958,  25.245370
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.001163,  9.925749
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000000,  0.000000
 solve           =       0.000000,  0.000000
 sumDz           =       0.001210,  10.326875
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.001399,  11.939916
 makedXdZ        =       0.002609,  22.266792
 xMatTime        =       0.001995,  17.026543
 zMatTime        =       0.000997,  8.509004
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000000,  0.000000
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000000,  0.000000
 EigTime         =       0.000000,  0.000000
 sub_total_bMat  =       0.009722,  82.973457
 Main Loop       =       0.011717,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000982,  8.380985
 Total           =       0.012699,  108.380985

xVec = 
{+6.367e-003,-6.499e-002,-1.379e-003}
xMat = 
{
{ {+5.602e-001,+4.300e-001,+4.476e-001,-7.530e-001,+5.027e-001 },
  {+4.300e-001,+1.078e+000,+4.096e-001,-1.611e+000,+1.227e+000 },
  {+4.476e-001,+4.096e-001,+2.630e+000,-3.425e-001,-4.363e-001 },
  {-7.530e-001,-1.611e+000,-3.425e-001,+3.108e+000,-7.093e-001 },
  {+5.027e-001,+1.227e+000,-4.363e-001,-7.093e-001,+4.390e+000 }   }
}
yMat = 
{
{ {+8.141e-002,+2.867e-001,-5.118e-002,+1.466e-001,-7.084e-002 },
  {+2.867e-001,+1.010e+000,-1.802e-001,+5.161e-001,-2.495e-001 },
  {-5.118e-002,-1.802e-001,+3.217e-002,-9.213e-002,+4.453e-002 },
  {+1.466e-001,+5.161e-001,-9.213e-002,+2.638e-001,-1.275e-001 },
  {-7.084e-002,-2.495e-001,+4.453e-002,-1.275e-001,+6.164e-002 }   }
}
    main loop time = 0.011717
        total time = 0.012699
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000982
SDPA end at [Thu Jul 15 21:27:24 2021]
ALL TIME = 0.013697
