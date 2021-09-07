SDPA start at [Thu Jul 15 21:27:24 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-210.dat-s  : sparse
"Dense tests with 5 * 5 matrices and 1-3 constraints"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-210.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -3.00e+003 7.5e-001 1.0e+000 2.00e-001
 1 3.2e+003 2.5e-001 1.1e-016 +8.23e+001 -3.31e+003 1.0e+000 4.8e+000 2.00e-001
 2 5.4e+002 5.6e-017 6.8e-016 +1.46e+001 -2.68e+003 7.2e+001 9.7e-001 1.00e-001
 3 6.7e+001 5.6e-017 1.0e-016 -1.75e+000 -3.38e+002 9.7e-001 9.7e-001 1.00e-001
 4 8.4e+000 6.5e-017 2.0e-017 -1.09e+000 -4.31e+001 1.3e+000 8.9e-001 1.00e-001
 5 1.4e+000 6.5e-017 3.5e-018 -4.72e+000 -1.18e+001 1.6e+000 8.0e-001 1.00e-001
 6 3.1e-001 6.5e-017 2.4e-018 -5.65e+000 -7.19e+000 1.3e+000 9.5e-001 1.00e-001
 7 3.8e-002 6.5e-017 8.2e-018 -5.76e+000 -5.96e+000 1.3e+000 9.6e-001 1.00e-001
 8 4.5e-003 6.5e-017 4.7e-018 -5.78e+000 -5.80e+000 1.4e+000 9.7e-001 1.00e-001
 9 4.9e-004 7.4e-017 0.0e+000 -5.78e+000 -5.78e+000 1.5e+000 9.8e-001 1.00e-001
10 5.0e-005 6.5e-017 2.4e-018 -5.78e+000 -5.78e+000 1.5e+000 9.8e-001 1.00e-001
11 5.0e-006 6.5e-017 1.5e-017 -5.78e+000 -5.78e+000 1.5e+000 9.8e-001 1.00e-001
12 5.0e-007 6.5e-017 2.1e-017 -5.78e+000 -5.78e+000 1.5e+000 9.8e-001 1.00e-001
13 5.0e-008 6.5e-017 9.1e-017 -5.78e+000 -5.78e+000 1.5e+000 9.8e-001 1.00e-001

phase.value  = pdOPT     
   Iteration = 13
          mu = +4.9902525667278042e-008
relative gap = +4.3191694682389240e-008
        gap  = +2.4951255461758137e-007
     digits  = +7.3645997555086202e+000
objValPrimal = -5.7768640722236189e+000
objValDual   = -5.7768643217361735e+000
p.feas.error = +6.2172489379008766e-015
d.feas.error = +5.5067062021407764e-013
total time   = 0.010968
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
 Predictor time  =       0.003986,  36.342086
 Corrector time  =       0.001995,  18.189278
 Make bMat time  =       0.000000,  0.000000
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.000997,  9.090080
 Make gVec Mul   =       0.000994,  9.062728
 Make gVec time  =       0.001992,  18.161926
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000000,  0.000000
 solve           =       0.000000,  0.000000
 sumDz           =       0.000000,  0.000000
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.002992,  27.279358
 makedXdZ        =       0.002992,  27.279358
 xMatTime        =       0.000000,  0.000000
 zMatTime        =       0.001995,  18.189278
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000000,  0.000000
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.002992,  27.279358
 EigTime         =       0.000000,  0.000000
 sub_total_bMat  =       0.010968,  100.000000
 Main Loop       =       0.010968,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000000,  0.000000
 Total           =       0.010968,  100.000000

xVec = 
{+3.753e-002,-1.203e-001}
xMat = 
{
{ {+6.408e+000,+1.158e+000,-4.472e-001,-1.364e+000,-1.437e+000 },
  {+1.158e+000,+3.296e+000,+2.059e+000,+2.831e-002,+3.387e+000 },
  {-4.472e-001,+2.059e+000,+6.514e+000,+1.519e+000,+1.179e+000 },
  {-1.364e+000,+2.831e-002,+1.519e+000,+2.485e+000,+1.208e+000 },
  {-1.437e+000,+3.387e+000,+1.179e+000,+1.208e+000,+5.520e+000 }   }
}
yMat = 
{
{ {+8.371e-002,-2.952e-001,+8.576e-002,-1.039e-001,+2.073e-001 },
  {-2.952e-001,+1.041e+000,-3.024e-001,+3.663e-001,-7.311e-001 },
  {+8.576e-002,-3.024e-001,+8.785e-002,-1.064e-001,+2.124e-001 },
  {-1.039e-001,+3.663e-001,-1.064e-001,+1.289e-001,-2.573e-001 },
  {+2.073e-001,-7.311e-001,+2.124e-001,-2.573e-001,+5.136e-001 }   }
}
    main loop time = 0.010968
        total time = 0.010968
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000000
SDPA end at [Thu Jul 15 21:27:24 2021]
ALL TIME = 0.011968
