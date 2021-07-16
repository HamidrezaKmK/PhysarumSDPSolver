SDPA start at [Thu Jul 15 21:27:24 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-212.dat-s  : sparse
"Dense tests with 5 * 5 matrices and 1-3 constraints"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-212.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -3.00e+003 9.1e-001 1.0e+000 2.00e-001
 1 1.8e+003 8.9e-002 0.0e+000 +3.19e-001 -3.72e+003 1.0e+000 1.5e+000 2.00e-001
 2 2.7e+002 2.3e-018 2.3e-015 +4.40e-001 -1.35e+003 9.7e-001 9.7e-001 1.00e-001
 3 3.4e+001 9.3e-018 1.1e-015 +4.49e-001 -1.69e+002 6.0e+001 9.9e-001 1.00e-001
 4 3.7e+000 1.9e-017 1.9e-016 +4.38e-002 -1.85e+001 4.6e+000 9.4e-001 1.00e-001
 5 5.1e-001 6.9e-018 1.1e-017 -3.80e-001 -2.92e+000 3.3e+000 9.4e-001 1.00e-001
 6 6.4e-002 9.3e-018 2.2e-018 -4.91e-001 -8.10e-001 1.7e+000 9.5e-001 1.00e-001
 7 8.1e-003 9.3e-018 3.4e-018 -5.02e-001 -5.42e-001 1.3e+000 9.4e-001 1.00e-001
 8 1.0e-003 1.9e-017 1.1e-018 -5.05e-001 -5.10e-001 1.1e+000 9.7e-001 1.00e-001
 9 1.2e-004 1.9e-017 1.1e-017 -5.06e-001 -5.06e-001 1.2e+000 9.8e-001 1.00e-001
10 1.3e-005 1.9e-017 0.0e+000 -5.06e-001 -5.06e-001 1.2e+000 9.8e-001 1.00e-001
11 1.3e-006 9.3e-018 1.1e-018 -5.06e-001 -5.06e-001 1.2e+000 9.9e-001 1.00e-001
12 1.3e-007 9.3e-018 7.9e-018 -5.06e-001 -5.06e-001 9.0e-001 9.0e-001 1.00e-001

phase.value  = pdFEAS    
   Iteration = 12
          mu = +1.2959195672124224e-007
relative gap = +6.4795978449438962e-007
        gap  = +6.4795978449438962e-007
     digits  = +5.8924012857349535e+000
objValPrimal = -5.0576533525411671e-001
objValDual   = -5.0576598321390120e-001
p.feas.error = +8.8817841970012523e-016
d.feas.error = +6.2172489379008766e-015
total time   = 0.010444
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
 Predictor time  =       0.005261,  55.466526
 Corrector time  =       0.001233,  12.999473
 Make bMat time  =       0.003732,  39.346336
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.000236,  2.488139
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.000000,  0.000000
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.001994,  21.022667
 solve           =       0.000000,  0.000000
 sumDz           =       0.001001,  10.553506
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.001525,  16.078018
 makedXdZ        =       0.002526,  26.631523
 xMatTime        =       0.000997,  10.511334
 zMatTime        =       0.000000,  0.000000
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.001994,  21.022667
 EigzMatTime     =       0.000000,  0.000000
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000000,  0.000000
 EigTime         =       0.001994,  21.022667
 sub_total_bMat  =       0.005753,  60.653664
 Main Loop       =       0.009485,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000959,  10.110701
 Total           =       0.010444,  110.110701

xVec = 
{+8.198e-002,-3.753e-002}
xMat = 
{
{ {+5.198e+000,+3.280e+000,+3.597e-001,+3.472e+000,-2.354e+000 },
  {+3.280e+000,+4.707e+000,+2.922e+000,-3.156e-001,-3.188e+000 },
  {+3.597e-001,+2.922e+000,+8.423e+000,-1.582e+000,+2.843e+000 },
  {+3.472e+000,-3.156e-001,-1.582e+000,+5.009e+000,+6.488e-001 },
  {-2.354e+000,-3.188e+000,+2.843e+000,+6.488e-001,+6.158e+000 }   }
}
yMat = 
{
{ {+2.102e-002,-5.977e-002,+3.173e-002,-3.502e-003,-3.719e-002 },
  {-5.977e-002,+1.699e-001,-9.021e-002,+9.955e-003,+1.057e-001 },
  {+3.173e-002,-9.021e-002,+4.788e-002,-5.284e-003,-5.613e-002 },
  {-3.502e-003,+9.955e-003,-5.284e-003,+5.838e-004,+6.194e-003 },
  {-3.719e-002,+1.057e-001,-5.613e-002,+6.194e-003,+6.578e-002 }   }
}
    main loop time = 0.009485
        total time = 0.010444
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000959
SDPA end at [Thu Jul 15 21:27:24 2021]
ALL TIME = 0.011194
