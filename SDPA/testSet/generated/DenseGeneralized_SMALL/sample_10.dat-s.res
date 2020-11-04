SDPA start at [Wed Nov 04 15:48:15 2020]
param  is ./param.sdpa 
data   is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseGeneralized_SMALL\sample_10.dat-s  : sparse
out    is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseGeneralized_SMALL\sample_10.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -3.80e+003 8.5e-001 1.0e+000 2.00e-001
 1 2.6e+003 1.5e-001 1.1e-016 +5.84e+001 -4.29e+003 1.0e+000 1.1e+000 2.00e-001
 2 4.9e+002 3.6e-017 2.7e-016 +2.95e+001 -1.44e+003 2.8e+001 9.7e-001 1.00e-001
 3 5.9e+001 3.6e-017 1.1e-016 +1.37e+001 -1.62e+002 9.7e-001 9.7e-001 1.00e-001
 4 7.4e+000 3.6e-017 6.8e-018 +1.40e+001 -8.08e+000 1.3e+000 8.9e-001 1.00e-001
 5 1.1e+000 5.4e-017 1.7e-018 +1.10e+001 +7.59e+000 1.6e+000 7.4e-001 1.00e-001
 6 2.0e-001 3.6e-017 1.5e-017 +9.98e+000 +9.38e+000 1.1e+000 8.0e-001 1.00e-001
 7 3.8e-002 5.4e-017 6.8e-018 +9.77e+000 +9.65e+000 1.1e+000 9.3e-001 1.00e-001
 8 4.8e-003 3.6e-017 1.2e-017 +9.74e+000 +9.73e+000 1.1e+000 9.6e-001 1.00e-001
 9 5.6e-004 3.6e-017 3.4e-018 +9.74e+000 +9.74e+000 1.1e+000 9.7e-001 1.00e-001
10 5.9e-005 3.6e-017 2.1e-017 +9.74e+000 +9.74e+000 1.2e+000 9.7e-001 1.00e-001
11 6.1e-006 3.6e-017 2.7e-017 +9.74e+000 +9.74e+000 1.2e+000 9.7e-001 1.00e-001
12 6.1e-007 7.2e-017 2.2e-016 +9.74e+000 +9.74e+000 1.2e+000 9.7e-001 1.00e-001
13 6.2e-008 7.2e-017 6.6e-016 +9.74e+000 +9.74e+000 1.2e+000 9.7e-001 1.00e-001

phase.value  = pdOPT     
   Iteration = 13
          mu = +6.1725669316577595e-008
relative gap = +1.9012989400185195e-008
        gap  = +1.8517760658198767e-007
     digits  = +7.7209495939217527e+000
objValPrimal = +9.7395314563513029e+000
objValDual   = +9.7395312711736963e+000
p.feas.error = +7.1054273576010019e-015
d.feas.error = +1.3784529073745944e-012
total time   = 0.007726
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
 Predictor time  =       0.003663,  47.411338
 Corrector time  =       0.001000,  12.943308
 Make bMat time  =       0.001488,  19.259643
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.000635,  8.219001
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.000574,  7.429459
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000497,  6.432824
 solve           =       0.000000,  0.000000
 sumDz           =       0.000469,  6.070412
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.001497,  19.376133
 makedXdZ        =       0.001966,  25.446544
 xMatTime        =       0.000273,  3.533523
 zMatTime        =       0.001192,  15.428424
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000497,  6.432824
 EigzMatTime     =       0.000000,  0.000000
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000644,  8.335491
 EigTime         =       0.000497,  6.432824
 sub_total_bMat  =       0.006238,  80.740357
 Main Loop       =       0.007726,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000000,  0.000000
 Total           =       0.007726,  100.000000

xVec = 
{-3.663e-001,+2.545e-001}
xMat = 
{
{ {+1.613e+001,+1.821e+001,-1.041e+001 },
  {+1.821e+001,+2.311e+001,-1.389e+001 },
  {-1.041e+001,-1.389e+001,+8.500e+000 }   }
}
yMat = 
{
{ {+6.322e-002,-1.778e-001,-2.130e-001 },
  {-1.778e-001,+4.999e-001,+5.988e-001 },
  {-2.130e-001,+5.988e-001,+7.173e-001 }   }
}
    main loop time = 0.007726
        total time = 0.007726
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000000
SDPA end at [Wed Nov 04 15:48:15 2020]
ALL TIME = 0.009864
