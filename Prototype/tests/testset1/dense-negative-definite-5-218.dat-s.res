SDPA start at [Thu Jul 15 21:27:24 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-218.dat-s  : sparse
"Dense tests with 5 * 5 matrices and 1-3 constraints"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-218.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -2.40e+003 9.1e-001 1.0e+000 2.00e-001
 1 1.7e+003 9.0e-002 1.9e-016 +1.06e-001 -3.16e+003 1.0e+000 1.8e+000 2.00e-001
 2 2.7e+002 1.8e-017 3.6e-016 +1.45e+000 -1.35e+003 9.7e-001 9.7e-001 1.00e-001
 3 3.4e+001 1.8e-017 6.3e-017 +1.45e+000 -1.69e+002 1.9e+001 9.6e-001 1.00e-001
 4 4.0e+000 1.8e-017 1.0e-017 -2.15e+000 -2.22e+001 3.4e+000 9.5e-001 1.00e-001
 5 4.9e-001 2.3e-017 2.2e-018 -2.78e+000 -5.24e+000 4.8e+000 9.5e-001 1.00e-001
 6 6.1e-002 2.3e-017 5.6e-019 -2.84e+000 -3.15e+000 2.1e+000 9.2e-001 1.00e-001
 7 8.9e-003 2.8e-017 2.5e-018 -2.86e+000 -2.90e+000 1.8e+000 9.6e-001 1.00e-001
 8 1.1e-003 2.8e-017 1.7e-018 -2.86e+000 -2.87e+000 2.2e+000 9.7e-001 1.00e-001
 9 1.2e-004 2.8e-017 0.0e+000 -2.86e+000 -2.86e+000 2.5e+000 9.8e-001 1.00e-001
10 1.3e-005 2.3e-017 4.5e-018 -2.86e+000 -2.86e+000 2.7e+000 9.8e-001 1.00e-001
11 1.3e-006 2.3e-017 1.8e-017 -2.86e+000 -2.86e+000 2.8e+000 9.8e-001 1.00e-001
12 1.3e-007 2.3e-017 1.3e-017 -2.86e+000 -2.86e+000 9.0e-001 9.0e-001 1.00e-001

phase.value  = pdFEAS    
   Iteration = 12
          mu = +1.2796441577478391e-007
relative gap = +2.2366620126180364e-007
        gap  = +6.3982208420299003e-007
     digits  = +6.6503996382301374e+000
objValPrimal = -2.8606110759702315e+000
objValDual   = -2.8606117157923157e+000
p.feas.error = +2.2204460492503131e-015
d.feas.error = +4.2632564145606011e-014
total time   = 0.009972
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
 Predictor time  =       0.004977,  49.909747
 Corrector time  =       0.001004,  10.068191
 Make bMat time  =       0.001993,  19.985961
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.000000,  0.000000
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.000000,  0.000000
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.001997,  20.026073
 solve           =       0.000000,  0.000000
 sumDz           =       0.001005,  10.078219
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.002983,  29.913759
 makedXdZ        =       0.003988,  39.991978
 xMatTime        =       0.000996,  9.987966
 zMatTime        =       0.000998,  10.008022
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.001997,  20.026073
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000000,  0.000000
 EigTime         =       0.001997,  20.026073
 sub_total_bMat  =       0.007979,  80.014039
 Main Loop       =       0.009972,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000000,  0.000000
 Total           =       0.009972,  100.000000

xVec = 
{+8.524e-002,+2.609e-002,-7.914e-002}
xMat = 
{
{ {+4.001e+000,+1.320e+000,+1.347e+000,+1.593e-001,-2.792e-001 },
  {+1.320e+000,+4.195e+000,+3.170e+000,-4.207e+000,-9.865e-001 },
  {+1.347e+000,+3.170e+000,+2.584e+000,-2.557e+000,-5.638e-001 },
  {+1.593e-001,-4.207e+000,-2.557e+000,+6.769e+000,+3.362e-001 },
  {-2.792e-001,-9.865e-001,-5.638e-001,+3.362e-001,+3.590e+000 }   }
}
yMat = 
{
{ {+2.915e-004,-1.497e-002,+1.395e-002,-3.964e-003,-1.528e-003 },
  {-1.497e-002,+7.687e-001,-7.166e-001,+2.036e-001,+7.849e-002 },
  {+1.395e-002,-7.166e-001,+6.679e-001,-1.898e-001,-7.316e-002 },
  {-3.964e-003,+2.036e-001,-1.898e-001,+5.390e-002,+2.078e-002 },
  {-1.528e-003,+7.849e-002,-7.316e-002,+2.078e-002,+8.014e-003 }   }
}
    main loop time = 0.009972
        total time = 0.009972
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000000
SDPA end at [Thu Jul 15 21:27:24 2021]
ALL TIME = 0.011941
