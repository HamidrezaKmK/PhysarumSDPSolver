SDPA start at [Thu Jul 15 21:27:24 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-25.dat-s  : sparse
"Dense tests with 5 * 5 matrices and 1-3 constraints"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-25.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -2.60e+003 7.1e-001 1.0e+000 2.00e-001
 1 3.4e+003 2.9e-001 3.2e-016 +9.01e+001 -2.90e+003 9.9e-001 9.9e-001 2.00e-001
 2 6.2e+002 2.3e-003 6.4e-016 +1.29e+001 -2.98e+003 1.0e+000 1.1e+000 2.00e-001
 3 9.7e+001 1.8e-017 5.3e-017 +1.26e+001 -4.71e+002 1.4e+001 9.4e-001 1.00e-001
 4 1.2e+001 1.8e-017 6.3e-017 -2.30e+000 -6.19e+001 2.0e+000 9.4e-001 1.00e-001
 5 1.6e+000 1.8e-017 6.7e-018 -4.42e+000 -1.23e+001 3.7e+000 9.5e-001 1.00e-001
 6 2.0e-001 1.8e-017 4.2e-019 -4.67e+000 -5.66e+000 2.0e+000 9.5e-001 1.00e-001
 7 2.4e-002 1.8e-017 3.3e-018 -4.72e+000 -4.84e+000 1.9e+000 9.6e-001 1.00e-001
 8 2.8e-003 9.2e-018 1.7e-018 -4.72e+000 -4.73e+000 2.2e+000 9.7e-001 1.00e-001
 9 3.0e-004 9.2e-018 6.7e-018 -4.72e+000 -4.72e+000 2.4e+000 9.8e-001 1.00e-001
10 3.0e-005 1.8e-017 6.7e-018 -4.72e+000 -4.72e+000 2.4e+000 9.8e-001 1.00e-001
11 3.1e-006 1.8e-017 6.0e-017 -4.72e+000 -4.72e+000 2.4e+000 9.8e-001 1.00e-001
12 3.1e-007 9.2e-018 5.7e-017 -4.72e+000 -4.72e+000 2.4e+000 9.8e-001 1.00e-001
13 3.1e-008 1.8e-017 7.3e-017 -4.72e+000 -4.72e+000 2.4e+000 9.8e-001 1.00e-001

phase.value  = pdOPT     
   Iteration = 13
          mu = +3.0551183805016535e-008
relative gap = +3.2363145519544863e-008
        gap  = +1.5275589149155167e-007
     digits  = +7.4899492739759861e+000
objValPrimal = -4.7200569217682569e+000
objValDual   = -4.7200570745241484e+000
p.feas.error = +1.7763568394002505e-015
d.feas.error = +3.1175062531474396e-013
total time   = 0.011881
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
 Predictor time  =       0.005987,  54.881291
 Corrector time  =       0.001930,  17.691814
 Make bMat time  =       0.001370,  12.558438
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.000653,  5.985883
 Make gVec Mul   =       0.000970,  8.891741
 Make gVec time  =       0.001968,  18.040150
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000000,  0.000000
 solve           =       0.000000,  0.000000
 sumDz           =       0.001928,  17.673481
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.001998,  18.315153
 makedXdZ        =       0.003926,  35.988633
 xMatTime        =       0.001995,  18.287652
 zMatTime        =       0.000000,  0.000000
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000000,  0.000000
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000997,  9.139243
 EigTime         =       0.000000,  0.000000
 sub_total_bMat  =       0.009539,  87.441562
 Main Loop       =       0.010909,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000972,  8.910074
 Total           =       0.011881,  108.910074

xVec = 
{-7.883e-003,+3.285e-004,+1.331e-001}
xMat = 
{
{ {+5.553e+000,+9.947e-001,-6.131e-001,+1.930e+000,+1.464e+000 },
  {+9.947e-001,+3.696e+000,-9.867e-001,-1.040e+000,-2.932e+000 },
  {-6.131e-001,-9.867e-001,+3.301e+000,-1.332e+000,+5.461e-001 },
  {+1.930e+000,-1.040e+000,-1.332e+000,+5.400e+000,+2.180e+000 },
  {+1.464e+000,-2.932e+000,+5.461e-001,+2.180e+000,+3.330e+000 }   }
}
yMat = 
{
{ {+1.272e-001,-2.855e-001,+7.361e-003,+3.526e-002,-3.317e-001 },
  {-2.855e-001,+6.412e-001,-1.653e-002,-7.917e-002,+7.448e-001 },
  {+7.361e-003,-1.653e-002,+4.261e-004,+2.041e-003,-1.920e-002 },
  {+3.526e-002,-7.917e-002,+2.041e-003,+9.776e-003,-9.197e-002 },
  {-3.317e-001,+7.448e-001,-1.920e-002,-9.197e-002,+8.652e-001 }   }
}
    main loop time = 0.010909
        total time = 0.011881
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000972
SDPA end at [Thu Jul 15 21:27:24 2021]
ALL TIME = 0.011881
