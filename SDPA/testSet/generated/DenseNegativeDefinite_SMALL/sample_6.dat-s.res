SDPA start at [Wed Nov 04 15:48:16 2020]
param  is ./param.sdpa 
data   is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseNegativeDefinite_SMALL\sample_6.dat-s  : sparse
out    is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseNegativeDefinite_SMALL\sample_6.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -1.30e+003 7.9e-001 1.0e+000 2.00e-001
 1 1.6e+003 2.1e-001 2.1e-016 +1.62e+002 -6.25e+002 9.4e-001 9.4e-001 2.00e-001
 2 3.2e+002 1.3e-002 2.1e-016 +3.04e+001 -6.41e+002 1.0e+000 1.1e+000 2.00e-001
 3 6.0e+001 1.4e-017 5.2e-016 +1.87e+001 -1.63e+002 5.6e+000 8.9e-001 1.00e-001
 4 6.6e+000 3.2e-017 5.9e-017 -1.50e+000 -2.13e+001 1.2e+000 9.6e-001 1.00e-001
 5 7.9e-001 3.6e-017 1.5e-017 -3.55e+000 -5.93e+000 1.5e+000 9.5e-001 1.00e-001
 6 8.7e-002 3.6e-017 8.2e-019 -3.75e+000 -4.01e+000 1.5e+000 9.6e-001 1.00e-001
 7 9.8e-003 3.6e-017 1.6e-018 -3.77e+000 -3.80e+000 1.6e+000 9.6e-001 1.00e-001
 8 1.0e-003 3.6e-017 3.3e-018 -3.78e+000 -3.78e+000 1.7e+000 9.7e-001 1.00e-001
 9 1.1e-004 3.6e-017 6.5e-018 -3.78e+000 -3.78e+000 1.7e+000 9.6e-001 1.00e-001
10 1.1e-005 3.6e-017 5.0e-017 -3.78e+000 -3.78e+000 1.7e+000 9.6e-001 1.00e-001
11 1.2e-006 3.6e-017 1.9e-016 -3.78e+000 -3.78e+000 1.8e+000 9.5e-001 1.00e-001
12 1.3e-007 3.6e-017 2.0e-015 -3.78e+000 -3.78e+000 1.8e+000 9.5e-001 1.00e-001

phase.value  = pdOPT     
   Iteration = 12
          mu = +1.2577686292480905e-007
relative gap = +9.9948141016314858e-008
        gap  = +3.7732852042893228e-007
     digits  = +7.0002252791232973e+000
objValPrimal = -3.7752428182801081e+000
objValDual   = -3.7752431956086285e+000
p.feas.error = +3.5527136788005009e-015
d.feas.error = +8.7041485130612273e-012
total time   = 0.009187
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
 Predictor time  =       0.004980,  57.300656
 Corrector time  =       0.001776,  20.434933
 Make bMat time  =       0.002491,  28.661834
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.001225,  14.095041
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.000495,  5.695547
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000000,  0.000000
 solve           =       0.000000,  0.000000
 sumDz           =       0.000992,  11.414107
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.001553,  17.869060
 makedXdZ        =       0.002545,  29.283166
 xMatTime        =       0.000205,  2.358762
 zMatTime        =       0.000690,  7.939247
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000000,  0.000000
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000544,  6.259349
 EigTime         =       0.000000,  0.000000
 sub_total_bMat  =       0.006200,  71.338166
 Main Loop       =       0.008691,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000496,  5.707053
 Total           =       0.009187,  105.707053

xVec = 
{-2.118e-001,+1.788e-001}
xMat = 
{
{ {+6.652e+000,-2.562e+000,-2.183e+000 },
  {-2.562e+000,+1.853e+000,+7.883e-001 },
  {-2.183e+000,+7.883e-001,+7.192e-001 }   }
}
yMat = 
{
{ {+2.059e-001,+3.546e-002,+5.858e-001 },
  {+3.546e-002,+6.108e-003,+1.009e-001 },
  {+5.858e-001,+1.009e-001,+1.667e+000 }   }
}
    main loop time = 0.008691
        total time = 0.009187
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000496
SDPA end at [Wed Nov 04 15:48:16 2020]
ALL TIME = 0.011171
