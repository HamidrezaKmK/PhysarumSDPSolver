SDPA start at [Thu Jul 15 21:27:24 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-219.dat-s  : sparse
"Dense tests with 5 * 5 matrices and 1-3 constraints"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-219.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -2.10e+003 9.1e-001 1.0e+000 2.00e-001
 1 1.7e+003 8.9e-002 2.4e-016 +1.25e+000 -2.70e+003 1.0e+000 2.1e+000 2.00e-001
 2 2.6e+002 1.8e-017 9.1e-016 +4.30e-001 -1.31e+003 9.0e+001 9.7e-001 1.00e-001
 3 3.2e+001 1.8e-017 3.6e-017 -5.90e-001 -1.60e+002 8.5e+001 9.8e-001 1.00e-001
 4 3.6e+000 1.8e-017 2.1e-017 -2.05e+000 -1.98e+001 9.8e-001 9.8e-001 1.00e-001
 5 4.3e-001 1.8e-017 1.5e-018 -1.99e+000 -4.12e+000 1.1e+000 9.6e-001 1.00e-001
 6 5.2e-002 1.8e-017 1.5e-018 -2.19e+000 -2.44e+000 1.2e+000 9.7e-001 1.00e-001
 7 5.9e-003 2.7e-017 0.0e+000 -2.20e+000 -2.23e+000 1.2e+000 9.8e-001 1.00e-001
 8 6.3e-004 2.7e-017 1.5e-018 -2.21e+000 -2.21e+000 1.3e+000 9.8e-001 1.00e-001
 9 6.4e-005 2.7e-017 0.0e+000 -2.21e+000 -2.21e+000 1.3e+000 9.8e-001 1.00e-001
10 6.4e-006 2.7e-017 1.5e-018 -2.21e+000 -2.21e+000 1.3e+000 9.8e-001 1.00e-001
11 6.4e-007 2.7e-017 1.5e-018 -2.21e+000 -2.21e+000 1.3e+000 9.8e-001 1.00e-001
12 6.4e-008 2.7e-017 1.5e-018 -2.21e+000 -2.21e+000 9.0e-001 9.0e-001 1.00e-001

phase.value  = pdFEAS    
   Iteration = 12
          mu = +6.4058998172633610e-008
relative gap = +1.4512922348440813e-007
        gap  = +3.2029499053010113e-007
     digits  = +6.8382451284297137e+000
objValPrimal = -2.2069639704399728e+000
objValDual   = -2.2069642907349634e+000
p.feas.error = +2.6645352591003757e-015
d.feas.error = +3.5527136788005009e-015
total time   = 0.009810
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
 Predictor time  =       0.004838,  49.317023
 Corrector time  =       0.002978,  30.356779
 Make bMat time  =       0.003827,  39.011213
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
 Ste Cor time    =       0.000997,  10.163099
 solve           =       0.000000,  0.000000
 sumDz           =       0.001011,  10.305810
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.002978,  30.356779
 makedXdZ        =       0.003989,  40.662589
 xMatTime        =       0.000000,  0.000000
 zMatTime        =       0.000997,  10.163099
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000997,  10.163099
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000000,  0.000000
 EigTime         =       0.000997,  10.163099
 sub_total_bMat  =       0.005983,  60.988787
 Main Loop       =       0.009810,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000000,  0.000000
 Total           =       0.009810,  100.000000

xVec = 
{-9.196e-002}
xMat = 
{
{ {+1.310e+000,-1.700e+000,+1.228e-001,+1.291e-001,+1.234e+000 },
  {-1.700e+000,+2.810e+000,-1.671e-002,+1.126e+000,-8.488e-001 },
  {+1.228e-001,-1.671e-002,+4.419e+000,-1.930e+000,-1.518e+000 },
  {+1.291e-001,+1.126e+000,-1.930e+000,+5.233e+000,+9.883e-001 },
  {+1.234e+000,-8.488e-001,-1.518e+000,+9.883e-001,+5.021e+000 }   }
}
yMat = 
{
{ {+5.669e-001,+3.607e-001,-9.107e-002,-1.092e-001,-8.443e-002 },
  {+3.607e-001,+2.295e-001,-5.795e-002,-6.949e-002,-5.372e-002 },
  {-9.107e-002,-5.795e-002,+1.463e-002,+1.755e-002,+1.356e-002 },
  {-1.092e-001,-6.949e-002,+1.755e-002,+2.104e-002,+1.626e-002 },
  {-8.443e-002,-5.372e-002,+1.356e-002,+1.626e-002,+1.257e-002 }   }
}
    main loop time = 0.009810
        total time = 0.009810
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000000
SDPA end at [Thu Jul 15 21:27:24 2021]
ALL TIME = 0.010811
