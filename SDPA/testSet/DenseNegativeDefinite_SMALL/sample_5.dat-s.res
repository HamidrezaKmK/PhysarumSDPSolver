SDPA start at [Wed Nov 11 18:14:18 2020]
param  is ./param.sdpa 
data   is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseNegativeDefinite_SMALL\sample_5.dat-s  : sparse
out    is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseNegativeDefinite_SMALL\sample_5.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -9.00e+002 8.3e-001 9.7e-001 2.00e-001
 1 1.9e+003 1.7e-001 3.3e-002 +1.01e+002 -7.19e+002 1.0e+000 1.0e+000 2.00e-001
 2 3.0e+002 3.6e-017 2.0e-016 +1.90e+001 -8.83e+002 2.1e+001 9.7e-001 1.00e-001
 3 3.1e+001 3.8e-017 3.6e-016 -1.77e+000 -9.59e+001 1.3e+001 9.7e-001 1.00e-001
 4 3.3e+000 3.8e-017 2.7e-017 -3.94e+000 -1.40e+001 9.5e-001 9.5e-001 1.00e-001
 5 4.9e-001 3.8e-017 3.2e-018 -3.87e+000 -5.33e+000 1.1e+000 9.5e-001 1.00e-001
 6 6.1e-002 3.8e-017 0.0e+000 -4.19e+000 -4.37e+000 1.1e+000 9.7e-001 1.00e-001
 7 6.7e-003 4.0e-017 3.2e-018 -4.22e+000 -4.24e+000 1.1e+000 9.7e-001 1.00e-001
 8 7.0e-004 3.8e-017 8.0e-018 -4.23e+000 -4.23e+000 1.1e+000 9.8e-001 1.00e-001
 9 7.1e-005 3.8e-017 2.6e-017 -4.23e+000 -4.23e+000 1.1e+000 9.8e-001 1.00e-001
10 7.2e-006 3.8e-017 2.6e-016 -4.23e+000 -4.23e+000 1.1e+000 9.7e-001 1.00e-001
11 7.3e-007 3.6e-017 4.2e-016 -4.23e+000 -4.23e+000 1.1e+000 9.7e-001 1.00e-001
12 7.4e-008 4.0e-017 2.9e-015 -4.23e+000 -4.23e+000 1.1e+000 9.7e-001 1.00e-001

phase.value  = pdOPT     
   Iteration = 12
          mu = +7.3831613489616643e-008
relative gap = +5.2412585773436158e-008
        gap  = +2.2149674450133716e-007
     digits  = +7.2805644138628898e+000
objValPrimal = -4.2260219645371508e+000
objValDual   = -4.2260221860338953e+000
p.feas.error = +3.8857805861880479e-015
d.feas.error = +1.2832401807827409e-011
total time   = 0.007126
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
 Predictor time  =       0.003973,  55.753578
 Corrector time  =       0.001169,  16.404715
 Make bMat time  =       0.001981,  27.799607
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.002169,  30.437833
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.000496,  6.960427
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000000,  0.000000
 solve           =       0.000000,  0.000000
 sumDz           =       0.000496,  6.960427
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.000000,  0.000000
 makedXdZ        =       0.000496,  6.960427
 xMatTime        =       0.000992,  13.920853
 zMatTime        =       0.000992,  13.920853
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000000,  0.000000
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000000,  0.000000
 EigTime         =       0.000000,  0.000000
 sub_total_bMat  =       0.005145,  72.200393
 Main Loop       =       0.007126,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000000,  0.000000
 Total           =       0.007126,  100.000000

xVec = 
{-1.574e-001,+6.970e-002}
xMat = 
{
{ {+1.669e+000,+1.844e-001,-1.666e+000 },
  {+1.844e-001,+1.190e+000,-7.271e-001 },
  {-1.666e+000,-7.271e-001,+1.915e+000 }   }
}
yMat = 
{
{ {+4.491e-001,+2.201e-001,+4.742e-001 },
  {+2.201e-001,+1.079e-001,+2.324e-001 },
  {+4.742e-001,+2.324e-001,+5.007e-001 }   }
}
    main loop time = 0.007126
        total time = 0.007126
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000000
SDPA end at [Wed Nov 11 18:14:18 2020]
ALL TIME = 0.008610
