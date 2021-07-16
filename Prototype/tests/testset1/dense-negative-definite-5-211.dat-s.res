SDPA start at [Thu Jul 15 21:27:24 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-211.dat-s  : sparse
"Dense tests with 5 * 5 matrices and 1-3 constraints"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-211.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -4.00e+003 8.8e-001 1.0e+000 2.00e-001
 1 2.4e+003 1.2e-001 2.2e-016 +1.57e+001 -5.05e+003 1.0e+000 2.0e+000 2.00e-001
 2 2.6e+002 1.9e-017 9.8e-016 +7.44e+000 -1.28e+003 5.1e+001 9.6e-001 1.00e-001
 3 3.3e+001 1.9e-017 5.8e-017 -3.14e+000 -1.70e+002 9.6e-001 9.6e-001 1.00e-001
 4 4.4e+000 1.9e-017 5.6e-018 -3.04e+000 -2.50e+001 1.1e+000 8.9e-001 1.00e-001
 5 7.7e-001 1.9e-017 3.4e-018 -5.78e+000 -9.63e+000 1.4e+000 8.7e-001 1.00e-001
 6 1.4e-001 1.9e-017 1.7e-018 -6.19e+000 -6.87e+000 1.3e+000 9.3e-001 1.00e-001
 7 1.9e-002 3.8e-017 8.5e-018 -6.25e+000 -6.34e+000 1.4e+000 9.6e-001 1.00e-001
 8 2.3e-003 1.9e-017 2.7e-017 -6.25e+000 -6.26e+000 1.4e+000 9.7e-001 1.00e-001
 9 2.5e-004 3.8e-017 1.7e-017 -6.25e+000 -6.25e+000 1.5e+000 9.8e-001 1.00e-001
10 2.6e-005 3.8e-017 3.8e-017 -6.25e+000 -6.25e+000 1.5e+000 9.8e-001 1.00e-001
11 2.6e-006 3.8e-017 4.6e-016 -6.25e+000 -6.25e+000 1.5e+000 9.8e-001 1.00e-001
12 2.7e-007 3.8e-017 1.2e-015 -6.25e+000 -6.25e+000 1.4e+000 9.8e-001 1.00e-001
13 2.7e-008 3.8e-017 1.9e-015 -6.25e+000 -6.25e+000 1.4e+000 9.8e-001 1.00e-001

phase.value  = pdOPT     
   Iteration = 13
          mu = +2.7261012203183556e-008
relative gap = +2.1799016292274708e-008
        gap  = +1.3630619655202736e-007
     digits  = +7.6615631040319156e+000
objValPrimal = -6.2528599106860625e+000
objValDual   = -6.2528600469922591e+000
p.feas.error = +3.5527136788005009e-015
d.feas.error = +7.7804429565730970e-012
total time   = 0.010984
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
 Predictor time  =       0.005531,  50.355062
 Corrector time  =       0.003216,  29.278951
 Make bMat time  =       0.003993,  36.352877
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.000224,  2.039330
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.000997,  9.076839
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000000,  0.000000
 solve           =       0.000000,  0.000000
 sumDz           =       0.000274,  2.494538
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.003259,  29.670430
 makedXdZ        =       0.003533,  32.164967
 xMatTime        =       0.001018,  9.268026
 zMatTime        =       0.000218,  1.984705
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000000,  0.000000
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.001001,  9.113256
 EigTime         =       0.000000,  0.000000
 sub_total_bMat  =       0.006991,  63.647123
 Main Loop       =       0.010984,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000000,  0.000000
 Total           =       0.010984,  100.000000

xVec = 
{+9.731e-004,-1.847e-001,+5.634e-002}
xMat = 
{
{ {+5.765e+000,+3.890e+000,-2.464e+000,+4.021e+000,-3.016e+000 },
  {+3.890e+000,+9.067e+000,-4.258e-002,+3.382e+000,-2.255e+000 },
  {-2.464e+000,-4.258e-002,+4.320e+000,-6.142e-002,-2.346e-002 },
  {+4.021e+000,+3.382e+000,-6.142e-002,+3.981e+000,-4.460e+000 },
  {-3.016e+000,-2.255e+000,-2.346e-002,-4.460e+000,+1.061e+001 }   }
}
yMat = 
{
{ {+4.324e-001,-6.567e-003,+2.382e-001,-5.493e-001,-1.088e-001 },
  {-6.567e-003,+9.973e-005,-3.617e-003,+8.342e-003,+1.652e-003 },
  {+2.382e-001,-3.617e-003,+1.312e-001,-3.026e-001,-5.993e-002 },
  {-5.493e-001,+8.342e-003,-3.026e-001,+6.978e-001,+1.382e-001 },
  {-1.088e-001,+1.652e-003,-5.993e-002,+1.382e-001,+2.738e-002 }   }
}
    main loop time = 0.010984
        total time = 0.010984
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000000
SDPA end at [Thu Jul 15 21:27:24 2021]
ALL TIME = 0.011981
