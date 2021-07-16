SDPA start at [Thu Jul 15 21:27:24 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-21.dat-s  : sparse
"Dense tests with 5 * 5 matrices and 1-3 constraints"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-21.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -3.10e+003 7.0e-001 1.0e+000 2.00e-001
 1 3.5e+003 3.0e-001 2.5e-016 +8.96e+001 -3.03e+003 1.0e+000 1.0e+000 2.00e-001
 2 6.3e+002 1.3e-003 1.6e-016 +9.60e+000 -3.07e+003 1.0e+000 1.1e+000 2.00e-001
 3 1.0e+002 1.9e-017 1.6e-016 +9.33e+000 -4.99e+002 1.8e+001 9.4e-001 1.00e-001
 4 1.2e+001 1.4e-017 7.6e-018 -7.24e+000 -6.82e+001 2.3e+000 9.5e-001 1.00e-001
 5 1.5e+000 1.4e-017 2.0e-018 -9.14e+000 -1.67e+001 2.6e+000 8.9e-001 1.00e-001
 6 2.5e-001 1.9e-017 2.0e-018 -9.50e+000 -1.08e+001 1.4e+000 9.3e-001 1.00e-001
 7 3.4e-002 1.4e-017 2.9e-018 -9.59e+000 -9.76e+000 1.4e+000 9.4e-001 1.00e-001
 8 4.6e-003 1.9e-017 1.4e-017 -9.60e+000 -9.62e+000 1.5e+000 9.5e-001 1.00e-001
 9 5.7e-004 1.9e-017 4.9e-017 -9.60e+000 -9.61e+000 1.5e+000 9.7e-001 1.00e-001
10 6.2e-005 1.9e-017 1.1e-016 -9.60e+000 -9.60e+000 1.4e+000 9.8e-001 1.00e-001
11 6.5e-006 1.9e-017 2.3e-016 -9.60e+000 -9.60e+000 1.4e+000 9.8e-001 1.00e-001
12 6.7e-007 1.9e-017 3.9e-016 -9.60e+000 -9.60e+000 1.4e+000 9.8e-001 1.00e-001
13 6.7e-008 1.9e-017 7.0e-016 -9.60e+000 -9.60e+000 1.4e+000 9.8e-001 1.00e-001

phase.value  = pdOPT     
   Iteration = 13
          mu = +6.7046857088470807e-008
relative gap = +3.4911240116734829e-008
        gap  = +3.3523387266143345e-007
     digits  = +7.4570347239074168e+000
objValPrimal = -9.6024622926248551e+000
objValDual   = -9.6024626278587277e+000
p.feas.error = +1.7763568394002505e-015
d.feas.error = +5.0235371418239083e-012
total time   = 0.010961
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
 Predictor time  =       0.005303,  48.380622
 Corrector time  =       0.002668,  24.340845
 Make bMat time  =       0.003981,  36.319679
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.001000,  9.123255
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.001465,  13.365569
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.001993,  18.182648
 solve           =       0.000000,  0.000000
 sumDz           =       0.001287,  11.741629
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.000238,  2.171335
 makedXdZ        =       0.001525,  13.912964
 xMatTime        =       0.000000,  0.000000
 zMatTime        =       0.000997,  9.095885
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.001993,  18.182648
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000000,  0.000000
 EigTime         =       0.001993,  18.182648
 sub_total_bMat  =       0.006980,  63.680321
 Main Loop       =       0.010961,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000000,  0.000000
 Total           =       0.010961,  100.000000

xVec = 
{+1.080e-001,+7.391e-003,+1.043e-001}
xMat = 
{
{ {+4.983e+000,+2.131e+000,-1.278e+000,+1.997e+000,-5.821e-001 },
  {+2.131e+000,+4.928e+000,+7.226e-001,+2.376e+000,+6.131e-002 },
  {-1.278e+000,+7.226e-001,+6.762e+000,+1.209e-001,-3.592e+000 },
  {+1.997e+000,+2.376e+000,+1.209e-001,+2.154e+000,-3.782e-001 },
  {-5.821e-001,+6.131e-002,-3.592e+000,-3.782e-001,+2.571e+000 }   }
}
yMat = 
{
{ {+1.350e-001,-1.398e-001,+2.464e-001,+8.381e-002,+3.905e-001 },
  {-1.398e-001,+1.447e-001,-2.551e-001,-8.677e-002,-4.043e-001 },
  {+2.464e-001,-2.551e-001,+4.497e-001,+1.530e-001,+7.128e-001 },
  {+8.381e-002,-8.677e-002,+1.530e-001,+5.203e-002,+2.424e-001 },
  {+3.905e-001,-4.043e-001,+7.128e-001,+2.424e-001,+1.130e+000 }   }
}
    main loop time = 0.010961
        total time = 0.010961
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000000
SDPA end at [Thu Jul 15 21:27:24 2021]
ALL TIME = 0.013112
