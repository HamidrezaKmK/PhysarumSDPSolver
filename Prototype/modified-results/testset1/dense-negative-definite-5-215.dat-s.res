SDPA start at [Thu Jul 15 21:27:24 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-215.dat-s  : sparse
"Dense tests with 5 * 5 matrices and 1-3 constraints"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-215.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -1.70e+003 9.1e-001 1.0e+000 2.00e-001
 1 1.6e+003 9.0e-002 4.6e-015 +4.64e-002 -2.24e+003 1.0e+000 2.7e+000 2.00e-001
 2 2.1e+002 9.1e-018 1.1e-014 +6.77e-002 -1.07e+003 9.6e-001 9.6e-001 1.00e-001
 3 2.9e+001 1.8e-017 1.1e-015 +6.90e-002 -1.43e+002 9.0e+001 9.9e-001 1.00e-001
 4 3.2e+000 1.8e-017 3.3e-016 +5.20e-002 -1.60e+001 2.1e+001 9.7e-001 1.00e-001
 5 3.5e-001 2.3e-017 6.1e-017 -2.15e-001 -1.96e+000 1.0e+001 9.7e-001 1.00e-001
 6 3.8e-002 2.3e-017 1.5e-018 -2.42e-001 -4.34e-001 9.6e-001 9.6e-001 1.00e-001
 7 5.3e-003 1.8e-017 0.0e+000 -2.41e-001 -2.68e-001 1.0e+000 9.7e-001 1.00e-001
 8 6.1e-004 1.8e-017 3.0e-018 -2.45e-001 -2.48e-001 1.1e+000 9.8e-001 1.00e-001
 9 6.5e-005 2.3e-017 3.0e-018 -2.45e-001 -2.45e-001 1.1e+000 9.9e-001 1.00e-001
10 6.6e-006 2.3e-017 3.0e-018 -2.45e-001 -2.45e-001 1.1e+000 9.9e-001 1.00e-001
11 6.6e-007 2.3e-017 1.5e-018 -2.45e-001 -2.45e-001 1.1e+000 9.9e-001 1.00e-001
12 6.6e-008 2.3e-017 0.0e+000 -2.45e-001 -2.45e-001 9.0e-001 9.0e-001 1.00e-001

phase.value  = pdFEAS    
   Iteration = 12
          mu = +6.6283502114794504e-008
relative gap = +3.3141751054621693e-007
        gap  = +3.3141751054621693e-007
     digits  = +5.8690772913953699e+000
objValPrimal = -2.4516160089881248e-001
objValDual   = -2.4516193231632302e-001
p.feas.error = +2.2204460492503131e-015
d.feas.error = +0.0000000000000000e+000
total time   = 0.009475
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
 Predictor time  =       0.004943,  52.168865
 Corrector time  =       0.001962,  20.707124
 Make bMat time  =       0.001948,  20.559367
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.002995,  31.609499
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.000000,  0.000000
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.002570,  27.124011
 solve           =       0.000000,  0.000000
 sumDz           =       0.000000,  0.000000
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.001962,  20.707124
 makedXdZ        =       0.001962,  20.707124
 xMatTime        =       0.000000,  0.000000
 zMatTime        =       0.000000,  0.000000
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000997,  10.522427
 EigzMatTime     =       0.001573,  16.601583
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000000,  0.000000
 EigTime         =       0.002570,  27.124011
 sub_total_bMat  =       0.007527,  79.440633
 Main Loop       =       0.009475,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000000,  0.000000
 Total           =       0.009475,  100.000000

xVec = 
{-8.172e-002}
xMat = 
{
{ {+3.925e+000,-1.122e-001,-1.791e+000,+2.800e+000,+9.004e-001 },
  {-1.122e-001,+1.564e+000,+1.726e+000,+8.811e-001,-5.141e-001 },
  {-1.791e+000,+1.726e+000,+3.031e+000,-4.540e-001,-1.386e+000 },
  {+2.800e+000,+8.811e-001,-4.540e-001,+3.306e+000,-1.017e+000 },
  {+9.004e-001,-5.141e-001,-1.386e+000,-1.017e+000,+4.928e+000 }   }
}
yMat = 
{
{ {+4.619e-003,+1.605e-002,-9.955e-003,-1.085e-002,-4.208e-003 },
  {+1.605e-002,+5.573e-002,-3.458e-002,-3.768e-002,-1.462e-002 },
  {-9.955e-003,-3.458e-002,+2.145e-002,+2.338e-002,+9.069e-003 },
  {-1.085e-002,-3.768e-002,+2.338e-002,+2.548e-002,+9.883e-003 },
  {-4.208e-003,-1.462e-002,+9.069e-003,+9.883e-003,+3.834e-003 }   }
}
    main loop time = 0.009475
        total time = 0.009475
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000000
SDPA end at [Thu Jul 15 21:27:24 2021]
ALL TIME = 0.010472
