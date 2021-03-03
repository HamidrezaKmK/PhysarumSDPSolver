SDPA start at [Wed Nov 11 18:14:18 2020]
param  is ./param.sdpa 
data   is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseNegativeDefinite_SMALL\sample_8.dat-s  : sparse
out    is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseNegativeDefinite_SMALL\sample_8.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -2.20e+003 9.5e-001 8.2e-001 2.00e-001
 1 2.1e+003 5.0e-002 1.8e-001 +2.27e+002 -1.24e+003 1.0e+000 9.3e-001 2.00e-001
 2 4.4e+002 2.3e-016 1.3e-002 +2.90e+002 -6.43e+002 3.1e+000 1.0e+000 2.00e-001
 3 4.1e+001 2.3e-016 6.4e-017 +1.89e+001 -1.04e+002 1.0e+000 9.5e-001 1.00e-001
 4 5.2e+000 2.4e-016 2.4e-017 -7.78e+000 -2.33e+001 1.1e+000 9.2e-001 1.00e-001
 5 6.8e-001 2.4e-016 2.0e-018 -1.09e+001 -1.29e+001 1.2e+000 9.6e-001 1.00e-001
 6 7.5e-002 2.3e-016 1.0e-018 -1.12e+001 -1.14e+001 1.2e+000 9.7e-001 1.00e-001
 7 8.1e-003 2.3e-016 0.0e+000 -1.12e+001 -1.12e+001 1.2e+000 9.7e-001 1.00e-001
 8 8.4e-004 2.3e-016 1.5e-018 -1.12e+001 -1.12e+001 1.2e+000 9.7e-001 1.00e-001
 9 8.5e-005 2.4e-016 3.0e-018 -1.12e+001 -1.12e+001 1.2e+000 9.7e-001 1.00e-001
10 8.6e-006 2.3e-016 1.2e-017 -1.12e+001 -1.12e+001 1.2e+000 9.7e-001 1.00e-001
11 8.8e-007 2.4e-016 1.3e-016 -1.12e+001 -1.12e+001 1.2e+000 9.7e-001 1.00e-001
12 9.2e-008 2.3e-016 2.0e-016 -1.12e+001 -1.12e+001 1.2e+000 9.7e-001 1.00e-001

phase.value  = pdOPT     
   Iteration = 12
          mu = +9.1650042962262049e-008
relative gap = +2.4530127406187893e-008
        gap  = +2.7495045173964172e-007
     digits  = +7.6103001961205337e+000
objValPrimal = -1.1208684073039048e+001
objValDual   = -1.1208684347989500e+001
p.feas.error = +2.1316282072803006e-014
d.feas.error = +7.0343730840249918e-013
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
 Predictor time  =       0.004469,  64.357719
 Corrector time  =       0.000491,  7.070853
 Make bMat time  =       0.003478,  50.086406
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.000495,  7.128456
 Make gVec Mul   =       0.000496,  7.142857
 Make gVec time  =       0.000496,  7.142857
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000000,  0.000000
 solve           =       0.000000,  0.000000
 sumDz           =       0.000000,  0.000000
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.000491,  7.070853
 makedXdZ        =       0.000491,  7.070853
 xMatTime        =       0.000493,  7.099654
 zMatTime        =       0.000499,  7.186060
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000000,  0.000000
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000992,  14.285714
 EigTime         =       0.000000,  0.000000
 sub_total_bMat  =       0.003466,  49.913594
 Main Loop       =       0.006944,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000000,  0.000000
 Total           =       0.006944,  100.000000

xVec = 
{+2.534e-001,-3.465e-001}
xMat = 
{
{ {+1.487e+000,-2.624e+000,-1.434e-001 },
  {-2.624e+000,+5.625e+000,+2.161e+000 },
  {-1.434e-001,+2.161e+000,+3.680e+000 }   }
}
yMat = 
{
{ {+1.270e+000,+7.403e-001,-3.853e-001 },
  {+7.403e-001,+4.317e-001,-2.247e-001 },
  {-3.853e-001,-2.247e-001,+1.169e-001 }   }
}
    main loop time = 0.006944
        total time = 0.006944
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000000
SDPA end at [Wed Nov 11 18:14:18 2020]
ALL TIME = 0.007935
