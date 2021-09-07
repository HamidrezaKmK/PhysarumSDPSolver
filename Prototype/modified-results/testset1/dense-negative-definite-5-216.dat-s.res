SDPA start at [Thu Jul 15 21:27:24 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-216.dat-s  : sparse
"Dense tests with 5 * 5 matrices and 1-3 constraints"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-216.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -2.40e+003 8.5e-001 1.0e+000 2.00e-001
 1 2.4e+003 1.5e-001 1.6e-016 +1.92e+001 -3.03e+003 1.0e+000 4.6e+000 2.00e-001
 2 3.2e+002 1.9e-017 5.7e-016 +3.32e+000 -1.60e+003 5.2e+001 9.6e-001 1.00e-001
 3 4.2e+001 2.3e-017 6.2e-017 -2.75e+000 -2.15e+002 9.8e-001 9.8e-001 1.00e-001
 4 5.1e+000 2.3e-017 9.0e-018 -2.39e+000 -2.80e+001 1.7e+000 9.5e-001 1.00e-001
 5 6.7e-001 2.3e-017 1.3e-018 -3.43e+000 -6.76e+000 2.2e+000 9.4e-001 1.00e-001
 6 8.8e-002 2.8e-017 3.8e-018 -3.59e+000 -4.03e+000 2.0e+000 9.6e-001 1.00e-001
 7 9.9e-003 3.2e-017 1.9e-018 -3.61e+000 -3.66e+000 2.0e+000 9.7e-001 1.00e-001
 8 1.1e-003 3.2e-017 1.3e-018 -3.61e+000 -3.61e+000 2.2e+000 9.8e-001 1.00e-001
 9 1.1e-004 2.8e-017 6.4e-018 -3.61e+000 -3.61e+000 2.2e+000 9.8e-001 1.00e-001
10 1.1e-005 3.2e-017 3.8e-018 -3.61e+000 -3.61e+000 2.2e+000 9.8e-001 1.00e-001
11 1.1e-006 2.8e-017 2.6e-017 -3.61e+000 -3.61e+000 2.2e+000 9.8e-001 1.00e-001
12 1.1e-007 3.2e-017 3.8e-016 -3.61e+000 -3.61e+000 9.0e-001 9.0e-001 1.00e-001

phase.value  = pdFEAS    
   Iteration = 12
          mu = +1.0925084312773947e-007
relative gap = +1.5140594517990338e-007
        gap  = +5.4625413214992591e-007
     digits  = +6.8198570712815663e+000
objValPrimal = -3.6078774195279784e+000
objValDual   = -3.6078779657821105e+000
p.feas.error = +3.1086244689504383e-015
d.feas.error = +1.0658141036401503e-012
total time   = 0.011595
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
 Predictor time  =       0.005000,  46.952766
 Corrector time  =       0.000996,  9.352991
 Make bMat time  =       0.000000,  0.000000
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
 Ste Cor time    =       0.001214,  11.400131
 solve           =       0.000998,  9.371772
 sumDz           =       0.002009,  18.865621
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.002989,  28.068363
 makedXdZ        =       0.004998,  46.933984
 xMatTime        =       0.000998,  9.371772
 zMatTime        =       0.001280,  12.019908
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000990,  9.296648
 EigzMatTime     =       0.000224,  2.103484
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.001161,  10.902432
 EigTime         =       0.001214,  11.400131
 sub_total_bMat  =       0.010649,  100.000000
 Main Loop       =       0.010649,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000946,  8.883463
 Total           =       0.011595,  108.883463

xVec = 
{-1.154e-001,+4.685e-002,+7.953e-002}
xMat = 
{
{ {+5.414e+000,+5.848e-001,-7.400e-001,-1.801e-002,-3.864e-001 },
  {+5.848e-001,+3.254e+000,+1.879e+000,-4.942e-001,-6.845e-002 },
  {-7.400e-001,+1.879e+000,+2.589e+000,+3.565e-001,-8.883e-001 },
  {-1.801e-002,-4.942e-001,+3.565e-001,+4.737e+000,+3.536e+000 },
  {-3.864e-001,-6.845e-002,-8.883e-001,+3.536e+000,+4.397e+000 }   }
}
yMat = 
{
{ {+1.973e-002,-5.262e-002,+7.242e-002,-5.622e-002,+6.076e-002 },
  {-5.262e-002,+1.403e-001,-1.931e-001,+1.500e-001,-1.621e-001 },
  {+7.242e-002,-1.931e-001,+2.658e-001,-2.064e-001,+2.230e-001 },
  {-5.622e-002,+1.500e-001,-2.064e-001,+1.602e-001,-1.731e-001 },
  {+6.076e-002,-1.621e-001,+2.230e-001,-1.731e-001,+1.871e-001 }   }
}
    main loop time = 0.010649
        total time = 0.011595
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000946
SDPA end at [Thu Jul 15 21:27:24 2021]
ALL TIME = 0.012219
