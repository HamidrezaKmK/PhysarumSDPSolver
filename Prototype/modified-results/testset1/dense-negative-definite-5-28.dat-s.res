SDPA start at [Thu Jul 15 21:27:24 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-28.dat-s  : sparse
"Dense tests with 5 * 5 matrices and 1-3 constraints"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-28.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -2.40e+003 8.4e-001 1.0e+000 2.00e-001
 1 2.5e+003 1.6e-001 3.0e-016 +1.71e+001 -3.17e+003 9.3e-001 2.4e+000 2.00e-001
 2 4.4e+002 1.0e-002 6.0e-016 +5.88e+000 -1.63e+003 1.0e+000 1.1e+000 2.00e-001
 3 7.7e+001 9.0e-018 3.4e-016 +3.79e+000 -3.81e+002 2.8e+001 9.5e-001 1.00e-001
 4 9.7e+000 9.0e-018 5.2e-017 -3.05e+000 -5.15e+001 1.1e+001 9.6e-001 1.00e-001
 5 1.3e+000 9.0e-018 5.3e-018 -3.25e+000 -9.68e+000 1.5e+000 8.0e-001 1.00e-001
 6 3.0e-001 9.0e-018 5.3e-018 -3.92e+000 -5.43e+000 1.0e+000 9.4e-001 1.00e-001
 7 4.4e-002 9.0e-018 5.3e-018 -4.11e+000 -4.33e+000 1.1e+000 9.4e-001 1.00e-001
 8 5.8e-003 1.8e-017 5.3e-018 -4.15e+000 -4.18e+000 1.1e+000 9.5e-001 1.00e-001
 9 7.1e-004 1.8e-017 3.1e-017 -4.15e+000 -4.16e+000 1.0e+000 9.7e-001 1.00e-001
10 7.8e-005 1.8e-017 1.2e-017 -4.15e+000 -4.16e+000 1.0e+000 9.8e-001 1.00e-001
11 8.3e-006 1.8e-017 1.3e-017 -4.16e+000 -4.16e+000 1.0e+000 9.8e-001 1.00e-001
12 8.4e-007 1.8e-017 1.7e-017 -4.16e+000 -4.16e+000 1.0e+000 9.8e-001 1.00e-001
13 8.5e-008 1.8e-017 1.6e-017 -4.16e+000 -4.16e+000 9.0e-001 9.0e-001 1.00e-001

phase.value  = pdFEAS    
   Iteration = 13
          mu = +8.5041409558783693e-008
relative gap = +1.0233379115547610e-007
        gap  = +4.2520704468529402e-007
     digits  = +6.9899809362862655e+000
objValPrimal = -4.1550988986888111e+000
objValDual   = -4.1550993238958558e+000
p.feas.error = +1.7763568394002505e-015
d.feas.error = +4.2632564145606011e-014
total time   = 0.011966
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
 Predictor time  =       0.004982,  41.634631
 Corrector time  =       0.001001,  8.365369
 Make bMat time  =       0.001993,  16.655524
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.000000,  0.000000
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.000995,  8.315226
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.002991,  24.995821
 solve           =       0.000000,  0.000000
 sumDz           =       0.000997,  8.331940
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.001998,  16.697309
 makedXdZ        =       0.002995,  25.029250
 xMatTime        =       0.000000,  0.000000
 zMatTime        =       0.000998,  8.340298
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000996,  8.323583
 EigzMatTime     =       0.001995,  16.672238
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.001994,  16.663881
 EigTime         =       0.002991,  24.995821
 sub_total_bMat  =       0.009973,  83.344476
 Main Loop       =       0.011966,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000000,  0.000000
 Total           =       0.011966,  100.000000

xVec = 
{+6.643e-002,+1.238e-001,+3.723e-002}
xMat = 
{
{ {+1.344e+000,-1.143e+000,-2.136e+000,-6.876e-001,-1.177e+000 },
  {-1.143e+000,+7.404e+000,+2.658e+000,+3.485e+000,+1.124e+000 },
  {-2.136e+000,+2.658e+000,+4.372e+000,+2.290e+000,+2.048e-001 },
  {-6.876e-001,+3.485e+000,+2.290e+000,+2.431e+000,-9.280e-001 },
  {-1.177e+000,+1.124e+000,+2.048e-001,-9.280e-001,+4.294e+000 }   }
}
yMat = 
{
{ {+3.473e-001,-1.782e-001,+7.742e-002,+3.636e-001,+2.167e-001 },
  {-1.782e-001,+1.790e-001,+1.948e-002,-3.949e-001,-1.820e-001 },
  {+7.742e-002,+1.948e-002,+5.731e-002,-5.985e-002,+4.640e-004 },
  {+3.636e-001,-3.949e-001,-5.985e-002,+8.764e-001,+3.953e-001 },
  {+2.167e-001,-1.820e-001,+4.640e-004,+3.953e-001,+1.925e-001 }   }
}
    main loop time = 0.011966
        total time = 0.011966
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000000
SDPA end at [Thu Jul 15 21:27:24 2021]
ALL TIME = 0.012957
