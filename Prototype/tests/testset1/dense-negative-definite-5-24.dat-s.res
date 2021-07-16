SDPA start at [Thu Jul 15 21:27:24 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-24.dat-s  : sparse
"Dense tests with 5 * 5 matrices and 1-3 constraints"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-24.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -2.20e+003 9.1e-001 1.0e+000 2.00e-001
 1 1.7e+003 8.9e-002 2.5e-016 +5.21e-001 -2.82e+003 1.0e+000 1.7e+000 2.00e-001
 2 2.6e+002 1.8e-017 4.3e-016 +6.77e-001 -1.30e+003 9.7e-001 9.7e-001 1.00e-001
 3 3.3e+001 1.8e-017 2.4e-016 +6.81e-001 -1.63e+002 2.6e+001 9.7e-001 1.00e-001
 4 3.7e+000 1.8e-017 2.0e-017 -1.03e+000 -1.95e+001 9.8e-001 9.8e-001 1.00e-001
 5 4.4e-001 1.8e-017 1.1e-018 -1.00e+000 -3.20e+000 1.1e+000 9.7e-001 1.00e-001
 6 5.2e-002 1.8e-017 0.0e+000 -1.19e+000 -1.46e+000 1.2e+000 9.7e-001 1.00e-001
 7 5.9e-003 1.8e-017 2.2e-018 -1.21e+000 -1.24e+000 1.2e+000 9.8e-001 1.00e-001
 8 6.3e-004 1.8e-017 2.2e-018 -1.22e+000 -1.22e+000 1.3e+000 9.8e-001 1.00e-001
 9 6.4e-005 1.8e-017 1.1e-018 -1.22e+000 -1.22e+000 1.3e+000 9.8e-001 1.00e-001
10 6.4e-006 1.4e-017 0.0e+000 -1.22e+000 -1.22e+000 1.3e+000 9.8e-001 1.00e-001
11 6.4e-007 1.8e-017 2.2e-018 -1.22e+000 -1.22e+000 1.3e+000 9.8e-001 1.00e-001
12 6.4e-008 1.4e-017 2.2e-018 -1.22e+000 -1.22e+000 9.0e-001 9.0e-001 1.00e-001

phase.value  = pdFEAS    
   Iteration = 12
          mu = +6.4160597146312165e-008
relative gap = +2.6374607643701021e-007
        gap  = +3.2080298639769467e-007
     digits  = +6.5788139923366407e+000
objValPrimal = -1.2163325742176365e+000
objValDual   = -1.2163328950206229e+000
p.feas.error = +1.3322676295501878e-015
d.feas.error = +3.5527136788005009e-015
total time   = 0.009853
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
 Predictor time  =       0.004815,  48.868365
 Corrector time  =       0.003040,  30.853547
 Make bMat time  =       0.001994,  20.237491
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.000987,  10.017254
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.000000,  0.000000
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000000,  0.000000
 solve           =       0.000000,  0.000000
 sumDz           =       0.001833,  18.603471
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.003041,  30.863696
 makedXdZ        =       0.004874,  49.467167
 xMatTime        =       0.000000,  0.000000
 zMatTime        =       0.001998,  20.278088
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000000,  0.000000
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000000,  0.000000
 EigTime         =       0.000000,  0.000000
 sub_total_bMat  =       0.007859,  79.762509
 Main Loop       =       0.009853,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000000,  0.000000
 Total           =       0.009853,  100.000000

xVec = 
{+7.602e-002}
xMat = 
{
{ {+5.205e+000,-1.725e-001,+2.579e-004,-1.826e+000,-1.542e+000 },
  {-1.725e-001,+3.365e+000,-1.754e+000,-7.552e-001,+1.936e+000 },
  {+2.579e-004,-1.754e+000,+7.378e+000,+1.757e+000,-1.823e+000 },
  {-1.826e+000,-7.552e-001,+1.757e+000,+2.191e+000,+9.597e-001 },
  {-1.542e+000,+1.936e+000,-1.823e+000,+9.597e-001,+2.645e+000 }   }
}
yMat = 
{
{ {+1.617e-003,+1.535e-002,-8.111e-003,+2.390e-002,-2.455e-002 },
  {+1.535e-002,+1.457e-001,-7.700e-002,+2.268e-001,-2.331e-001 },
  {-8.111e-003,-7.700e-002,+4.070e-002,-1.199e-001,+1.232e-001 },
  {+2.390e-002,+2.268e-001,-1.199e-001,+3.532e-001,-3.629e-001 },
  {-2.455e-002,-2.331e-001,+1.232e-001,-3.629e-001,+3.729e-001 }   }
}
    main loop time = 0.009853
        total time = 0.009853
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000000
SDPA end at [Thu Jul 15 21:27:24 2021]
ALL TIME = 0.010819
