SDPA start at [Thu Jul 15 21:27:24 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-26.dat-s  : sparse
"Dense tests with 5 * 5 matrices and 1-3 constraints"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-26.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -1.80e+003 8.9e-001 1.0e+000 2.00e-001
 1 1.9e+003 1.1e-001 2.9e-016 +5.95e+000 -2.51e+003 1.0e+000 3.5e+000 2.00e-001
 2 2.6e+002 9.1e-018 2.5e-016 +2.56e+000 -1.31e+003 9.0e+001 9.7e-001 1.00e-001
 3 3.3e+001 9.1e-018 3.1e-017 +4.56e-002 -1.67e+002 9.8e-001 9.8e-001 1.00e-001
 4 3.8e+000 9.1e-018 9.0e-018 +1.58e-001 -1.89e+001 1.7e+000 9.4e-001 1.00e-001
 5 5.1e-001 1.4e-017 2.6e-018 -9.04e-001 -3.46e+000 1.7e+000 9.8e-001 1.00e-001
 6 5.3e-002 9.1e-018 0.0e+000 -1.01e+000 -1.28e+000 1.7e+000 9.7e-001 1.00e-001
 7 6.0e-003 9.1e-018 2.6e-018 -1.02e+000 -1.05e+000 1.8e+000 9.8e-001 1.00e-001
 8 6.4e-004 1.4e-017 0.0e+000 -1.02e+000 -1.03e+000 2.0e+000 9.8e-001 1.00e-001
 9 6.5e-005 1.4e-017 1.3e-018 -1.02e+000 -1.02e+000 2.0e+000 9.8e-001 1.00e-001
10 6.5e-006 1.4e-017 2.6e-018 -1.02e+000 -1.02e+000 2.0e+000 9.8e-001 1.00e-001
11 6.5e-007 1.4e-017 2.6e-018 -1.02e+000 -1.02e+000 2.0e+000 9.8e-001 1.00e-001
12 6.5e-008 1.8e-017 1.3e-018 -1.02e+000 -1.02e+000 9.0e-001 9.0e-001 1.00e-001

phase.value  = pdFEAS    
   Iteration = 12
          mu = +6.5059268461453709e-008
relative gap = +3.1814445474492559e-007
        gap  = +3.2529634252931316e-007
     digits  = +6.4973756421108231e+000
objValPrimal = -1.0224798387402598e+000
objValDual   = -1.0224801640366024e+000
p.feas.error = +1.7763568394002505e-015
d.feas.error = +3.5527136788005009e-015
total time   = 0.011285
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
 Predictor time  =       0.005138,  49.820615
 Corrector time  =       0.002212,  21.448657
 Make bMat time  =       0.002340,  22.689809
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.001217,  11.800640
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.000000,  0.000000
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.001022,  9.909823
 solve           =       0.000000,  0.000000
 sumDz           =       0.001249,  12.110928
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.002544,  24.667895
 makedXdZ        =       0.003793,  36.778823
 xMatTime        =       0.000996,  9.657714
 zMatTime        =       0.000000,  0.000000
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.001022,  9.909823
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000945,  9.163192
 EigTime         =       0.001022,  9.909823
 sub_total_bMat  =       0.007973,  77.310191
 Main Loop       =       0.010313,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000972,  9.424998
 Total           =       0.011285,  109.424998

xVec = 
{+3.652e-002}
xMat = 
{
{ {+2.551e+000,+1.004e+000,-4.335e-001,-2.404e+000,-5.967e-001 },
  {+1.004e+000,+2.417e+000,-1.395e+000,+6.816e-001,-8.093e-001 },
  {-4.335e-001,-1.395e+000,+3.977e+000,-6.347e-001,-1.549e+000 },
  {-2.404e+000,+6.816e-001,-6.347e-001,+4.236e+000,+1.347e+000 },
  {-5.967e-001,-8.093e-001,-1.549e+000,+1.347e+000,+3.796e+000 }   }
}
yMat = 
{
{ {+3.051e-001,-2.903e-001,-8.161e-002,+2.510e-001,-1.363e-001 },
  {-2.903e-001,+2.762e-001,+7.765e-002,-2.388e-001,+1.297e-001 },
  {-8.161e-002,+7.765e-002,+2.183e-002,-6.714e-002,+3.646e-002 },
  {+2.510e-001,-2.388e-001,-6.714e-002,+2.065e-001,-1.121e-001 },
  {-1.363e-001,+1.297e-001,+3.646e-002,-1.121e-001,+6.090e-002 }   }
}
    main loop time = 0.010313
        total time = 0.011285
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000972
SDPA end at [Thu Jul 15 21:27:24 2021]
ALL TIME = 0.011285
