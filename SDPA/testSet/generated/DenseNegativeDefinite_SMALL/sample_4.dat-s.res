SDPA start at [Wed Nov 11 18:14:18 2020]
param  is ./param.sdpa 
data   is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseNegativeDefinite_SMALL\sample_4.dat-s  : sparse
out    is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseNegativeDefinite_SMALL\sample_4.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -1.50e+003 9.5e-001 7.9e-001 2.00e-001
 1 2.1e+003 4.8e-002 2.1e-001 +2.02e+002 -1.13e+003 1.0e+000 8.9e-001 2.00e-001
 2 4.4e+002 1.5e-016 2.3e-002 +3.17e+002 -2.65e+002 3.9e+000 1.0e+000 2.00e-001
 3 5.0e+001 2.2e-016 5.0e-018 +8.84e+001 -6.12e+001 1.0e+000 8.0e-001 1.00e-001
 4 8.1e+000 1.7e-016 1.3e-017 +6.52e+000 -1.79e+001 9.9e-001 9.3e-001 1.00e-001
 5 1.2e+000 1.6e-016 5.0e-018 -1.80e+000 -5.29e+000 1.0e+000 9.5e-001 1.00e-001
 6 1.5e-001 1.6e-016 1.7e-018 -2.63e+000 -3.07e+000 1.1e+000 9.7e-001 1.00e-001
 7 1.6e-002 1.6e-016 6.7e-018 -2.71e+000 -2.76e+000 1.1e+000 9.8e-001 1.00e-001
 8 1.6e-003 1.6e-016 1.2e-017 -2.72e+000 -2.73e+000 1.1e+000 9.8e-001 1.00e-001
 9 1.6e-004 1.6e-016 3.0e-017 -2.72e+000 -2.72e+000 1.1e+000 9.8e-001 1.00e-001
10 1.6e-005 1.6e-016 2.0e-016 -2.72e+000 -2.72e+000 1.1e+000 9.8e-001 1.00e-001
11 1.6e-006 1.6e-016 4.8e-016 -2.72e+000 -2.72e+000 1.1e+000 9.8e-001 1.00e-001
12 1.6e-007 1.7e-016 2.1e-015 -2.72e+000 -2.72e+000 9.0e-001 9.0e-001 1.00e-001

phase.value  = pdFEAS    
   Iteration = 12
          mu = +1.6437006925921574e-007
relative gap = +1.8116562205765227e-007
        gap  = +4.9311209293634306e-007
     digits  = +6.7419242104513799e+000
objValPrimal = -2.7218853260799154e+000
objValDual   = -2.7218858191920083e+000
p.feas.error = +1.5987211554602254e-014
d.feas.error = +9.0878415903716814e-012
total time   = 0.007803
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
 Predictor time  =       0.005463,  74.651544
 Corrector time  =       0.001210,  16.534572
 Make bMat time  =       0.002980,  40.721509
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000512,  6.996447
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.001983,  27.097568
 Make gVec Mul   =       0.000499,  6.818803
 Make gVec time  =       0.001097,  14.990435
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000000,  0.000000
 solve           =       0.000496,  6.777808
 sumDz           =       0.000117,  1.598797
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.000000,  0.000000
 makedXdZ        =       0.000117,  1.598797
 xMatTime        =       0.000645,  8.813884
 zMatTime        =       0.000000,  0.000000
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000000,  0.000000
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000000,  0.000000
 EigTime         =       0.000000,  0.000000
 sub_total_bMat  =       0.004338,  59.278491
 Main Loop       =       0.007318,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000485,  6.627494
 Total           =       0.007803,  106.627494

xVec = 
{+8.338e-002,-1.752e-001}
xMat = 
{
{ {+5.609e+000,-2.443e+000,-3.211e+000 },
  {-2.443e+000,+4.831e+000,+1.370e+000 },
  {-3.211e+000,+1.370e+000,+1.838e+000 }   }
}
yMat = 
{
{ {+3.882e-001,+5.005e-003,+6.744e-001 },
  {+5.005e-003,+6.458e-005,+8.694e-003 },
  {+6.744e-001,+8.694e-003,+1.172e+000 }   }
}
    main loop time = 0.007318
        total time = 0.007803
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000485
SDPA end at [Wed Nov 11 18:14:18 2020]
ALL TIME = 0.008813
