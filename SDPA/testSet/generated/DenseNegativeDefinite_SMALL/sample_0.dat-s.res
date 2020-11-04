SDPA start at [Wed Nov 04 15:48:15 2020]
param  is ./param.sdpa 
data   is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseNegativeDefinite_SMALL\sample_0.dat-s  : sparse
out    is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseNegativeDefinite_SMALL\sample_0.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -1.10e+003 8.9e-001 9.6e-001 2.00e-001
 1 1.5e+003 1.1e-001 4.4e-002 +1.06e+002 -9.68e+002 1.0e+000 1.0e+000 2.00e-001
 2 3.4e+002 7.3e-017 1.3e-016 +4.67e+001 -9.81e+002 6.8e+000 9.4e-001 1.00e-001
 3 4.0e+001 5.5e-017 4.9e-017 +1.28e+000 -1.20e+002 2.3e+000 9.7e-001 1.00e-001
 4 4.3e+000 5.3e-017 2.1e-018 -3.28e+000 -1.61e+001 4.2e+000 9.4e-001 1.00e-001
 5 4.9e-001 5.5e-017 4.1e-018 -3.85e+000 -5.34e+000 5.1e+000 9.5e-001 1.00e-001
 6 5.3e-002 5.5e-017 1.0e-017 -3.92e+000 -4.08e+000 2.3e+000 9.6e-001 1.00e-001
 7 5.5e-003 5.3e-017 4.1e-018 -3.93e+000 -3.95e+000 2.2e+000 9.6e-001 1.00e-001
 8 5.7e-004 5.0e-017 2.1e-018 -3.93e+000 -3.93e+000 2.1e+000 9.6e-001 1.00e-001
 9 5.8e-005 5.0e-017 1.8e-017 -3.93e+000 -3.93e+000 2.1e+000 9.6e-001 1.00e-001
10 5.9e-006 5.3e-017 1.0e-016 -3.93e+000 -3.93e+000 2.0e+000 9.6e-001 1.00e-001
11 6.1e-007 5.0e-017 3.3e-016 -3.93e+000 -3.93e+000 1.9e+000 9.5e-001 1.00e-001
12 6.4e-008 5.0e-017 3.7e-015 -3.93e+000 -3.93e+000 1.9e+000 9.5e-001 1.00e-001

phase.value  = pdOPT     
   Iteration = 12
          mu = +6.3683927020719011e-008
relative gap = +4.8612532549650767e-008
        gap  = +1.9105351212189703e-007
     digits  = +7.3132517530524241e+000
objValPrimal = -3.9301286614303748e+000
objValDual   = -3.9301288524838869e+000
p.feas.error = +4.8849813083506888e-015
d.feas.error = +1.2796874671039404e-011
total time   = 0.006944
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
 Predictor time  =       0.004467,  64.328917
 Corrector time  =       0.000998,  14.372120
 Make bMat time  =       0.002979,  42.900346
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.001489,  21.442972
 Make gVec Mul   =       0.000496,  7.142857
 Make gVec time  =       0.000997,  14.357719
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000496,  7.142857
 solve           =       0.000000,  0.000000
 sumDz           =       0.000000,  0.000000
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.000000,  0.000000
 makedXdZ        =       0.000000,  0.000000
 xMatTime        =       0.000000,  0.000000
 zMatTime        =       0.000983,  14.156106
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000496,  7.142857
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000000,  0.000000
 EigTime         =       0.000496,  7.142857
 sub_total_bMat  =       0.003965,  57.099654
 Main Loop       =       0.006944,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000000,  0.000000
 Total           =       0.006944,  100.000000

xVec = 
{-4.936e-002,-1.377e-001}
xMat = 
{
{ {+1.570e+000,-4.088e-001,-8.295e-001 },
  {-4.088e-001,+3.211e+000,-2.181e+000 },
  {-8.295e-001,-2.181e+000,+2.289e+000 }   }
}
yMat = 
{
{ {+2.503e-001,+2.648e-001,+3.430e-001 },
  {+2.648e-001,+2.802e-001,+3.630e-001 },
  {+3.430e-001,+3.630e-001,+4.702e-001 }   }
}
    main loop time = 0.006944
        total time = 0.006944
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000000
SDPA end at [Wed Nov 04 15:48:16 2020]
ALL TIME = 0.008431
