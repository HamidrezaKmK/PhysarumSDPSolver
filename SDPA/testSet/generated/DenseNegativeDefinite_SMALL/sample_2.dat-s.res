SDPA start at [Wed Nov 04 15:48:16 2020]
param  is ./param.sdpa 
data   is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseNegativeDefinite_SMALL\sample_2.dat-s  : sparse
out    is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseNegativeDefinite_SMALL\sample_2.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -2.20e+003 8.4e-001 9.0e-001 2.00e-001
 1 2.2e+003 1.6e-001 9.9e-002 +1.31e+002 -1.56e+003 1.0e+000 1.0e+000 2.00e-001
 2 5.6e+002 7.6e-017 1.4e-016 +4.38e+001 -1.63e+003 2.0e+001 9.7e-001 1.00e-001
 3 5.7e+001 1.0e-016 6.8e-017 -4.71e+000 -1.76e+002 5.2e+000 9.6e-001 1.00e-001
 4 6.2e+000 9.5e-017 8.4e-018 -9.66e+000 -2.82e+001 9.5e-001 9.5e-001 1.00e-001
 5 9.1e-001 1.0e-016 2.1e-018 -9.58e+000 -1.23e+001 1.1e+000 9.6e-001 1.00e-001
 6 1.1e-001 1.0e-016 0.0e+000 -1.02e+001 -1.05e+001 1.1e+000 9.7e-001 1.00e-001
 7 1.2e-002 9.5e-017 2.1e-018 -1.02e+001 -1.03e+001 1.1e+000 9.8e-001 1.00e-001
 8 1.2e-003 9.5e-017 0.0e+000 -1.03e+001 -1.03e+001 1.1e+000 9.8e-001 1.00e-001
 9 1.2e-004 1.0e-016 2.3e-017 -1.03e+001 -1.03e+001 1.1e+000 9.8e-001 1.00e-001
10 1.2e-005 9.5e-017 4.0e-017 -1.03e+001 -1.03e+001 1.1e+000 9.8e-001 1.00e-001
11 1.2e-006 9.5e-017 1.1e-016 -1.03e+001 -1.03e+001 1.1e+000 9.8e-001 1.00e-001
12 1.2e-007 1.0e-016 1.8e-016 -1.03e+001 -1.03e+001 1.1e+000 9.8e-001 1.00e-001

phase.value  = pdOPT     
   Iteration = 12
          mu = +1.2372525241370150e-007
relative gap = +3.6205097662088015e-008
        gap  = +3.7117558804311557e-007
     digits  = +7.4412302766864205e+000
objValPrimal = -1.0252025413331946e+001
objValDual   = -1.0252025784507534e+001
p.feas.error = +9.7699626167013776e-015
d.feas.error = +5.9685589803848416e-013
total time   = 0.007699
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
 Predictor time  =       0.003723,  48.356929
 Corrector time  =       0.001492,  19.379140
 Make bMat time  =       0.002730,  35.459151
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.000492,  6.390440
 Make gVec Mul   =       0.000498,  6.468373
 Make gVec time  =       0.000995,  12.923756
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000000,  0.000000
 solve           =       0.000000,  0.000000
 sumDz           =       0.000503,  6.533316
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.000495,  6.429406
 makedXdZ        =       0.000998,  12.962722
 xMatTime        =       0.001495,  19.418106
 zMatTime        =       0.000989,  12.845824
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000000,  0.000000
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000000,  0.000000
 EigTime         =       0.000000,  0.000000
 sub_total_bMat  =       0.004969,  64.540849
 Main Loop       =       0.007699,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000000,  0.000000
 Total           =       0.007699,  100.000000

xVec = 
{-8.250e-002,-2.215e-001}
xMat = 
{
{ {+5.692e+000,-1.496e-002,-3.152e+000 },
  {-1.496e-002,+1.867e+000,-2.128e+000 },
  {-3.152e+000,-2.128e+000,+4.190e+000 }   }
}
yMat = 
{
{ {+1.348e-001,+2.771e-001,+2.422e-001 },
  {+2.771e-001,+5.696e-001,+4.978e-001 },
  {+2.422e-001,+4.978e-001,+4.350e-001 }   }
}
    main loop time = 0.007699
        total time = 0.007699
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000000
SDPA end at [Wed Nov 04 15:48:16 2020]
ALL TIME = 0.009617
