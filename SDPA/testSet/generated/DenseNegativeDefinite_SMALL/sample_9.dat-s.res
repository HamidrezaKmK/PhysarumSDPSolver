SDPA start at [Wed Nov 04 15:48:16 2020]
param  is ./param.sdpa 
data   is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseNegativeDefinite_SMALL\sample_9.dat-s  : sparse
out    is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseNegativeDefinite_SMALL\sample_9.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -2.30e+003 8.0e-001 1.0e+000 2.00e-001
 1 2.7e+003 2.0e-001 1.4e-016 +5.38e+001 -2.29e+003 1.0e+000 3.5e+000 2.00e-001
 2 3.6e+002 3.8e-017 8.4e-016 +1.09e+001 -1.08e+003 2.6e+001 9.5e-001 1.00e-001
 3 4.8e+001 4.7e-017 2.6e-017 -4.21e+000 -1.48e+002 9.6e-001 9.6e-001 1.00e-001
 4 6.6e+000 4.7e-017 1.3e-017 -4.00e+000 -2.37e+001 1.3e+000 8.6e-001 1.00e-001
 5 1.0e+000 5.7e-017 6.5e-018 -7.70e+000 -1.08e+001 1.3e+000 7.5e-001 1.00e-001
 6 1.9e-001 4.7e-017 1.4e-017 -8.73e+000 -9.32e+000 1.1e+000 9.3e-001 1.00e-001
 7 2.6e-002 3.8e-017 2.2e-018 -8.84e+000 -8.92e+000 1.2e+000 9.6e-001 1.00e-001
 8 3.0e-003 5.2e-017 6.5e-018 -8.85e+000 -8.86e+000 1.2e+000 9.7e-001 1.00e-001
 9 3.2e-004 4.7e-017 4.3e-018 -8.85e+000 -8.86e+000 1.2e+000 9.7e-001 1.00e-001
10 3.3e-005 4.7e-017 2.2e-018 -8.85e+000 -8.85e+000 1.2e+000 9.7e-001 1.00e-001
11 3.3e-006 4.7e-017 1.1e-018 -8.85e+000 -8.85e+000 1.2e+000 9.7e-001 1.00e-001
12 3.3e-007 4.7e-017 4.3e-018 -8.85e+000 -8.85e+000 9.0e-001 9.0e-001 1.00e-001

phase.value  = pdFEAS    
   Iteration = 12
          mu = +3.2925323317778421e-007
relative gap = +1.1155521888204834e-007
        gap  = +9.8775968737641051e-007
     digits  = +6.9525101073285347e+000
objValPrimal = -8.8544457371011305e+000
objValDual   = -8.8544467248608179e+000
p.feas.error = +4.4408920985006262e-015
d.feas.error = +1.4210854715202004e-014
total time   = 0.007627
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
 Predictor time  =       0.005073,  71.460769
 Corrector time  =       0.001065,  15.002113
 Make bMat time  =       0.002977,  41.935484
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.000231,  3.253979
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.000647,  9.113960
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000000,  0.000000
 solve           =       0.000000,  0.000000
 sumDz           =       0.001108,  15.607832
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.000677,  9.536554
 makedXdZ        =       0.001785,  25.144387
 xMatTime        =       0.000630,  8.874489
 zMatTime        =       0.000209,  2.944077
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000000,  0.000000
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000122,  1.718552
 EigTime         =       0.000000,  0.000000
 sub_total_bMat  =       0.004122,  58.064516
 Main Loop       =       0.007099,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000528,  7.437667
 Total           =       0.007627,  107.437667

xVec = 
{-4.885e-001,+4.036e-001}
xMat = 
{
{ {+4.074e-001,+8.735e-001,-9.449e-001 },
  {+8.735e-001,+1.154e+001,-2.208e+000 },
  {-9.449e-001,-2.208e+000,+2.195e+000 }   }
}
yMat = 
{
{ {+1.070e+000,+8.866e-003,+4.695e-001 },
  {+8.866e-003,+7.352e-005,+3.891e-003 },
  {+4.695e-001,+3.891e-003,+2.060e-001 }   }
}
    main loop time = 0.007099
        total time = 0.007627
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000528
SDPA end at [Wed Nov 04 15:48:16 2020]
ALL TIME = 0.009091
