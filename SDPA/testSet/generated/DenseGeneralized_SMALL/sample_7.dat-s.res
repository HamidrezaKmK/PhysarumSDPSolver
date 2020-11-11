SDPA start at [Wed Nov 11 18:14:17 2020]
param  is ./param.sdpa 
data   is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseGeneralized_SMALL\sample_7.dat-s  : sparse
out    is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseGeneralized_SMALL\sample_7.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -3.00e+003 8.4e-001 9.7e-001 2.00e-001
 1 2.1e+003 1.6e-001 2.6e-002 +1.07e+002 -2.49e+003 1.0e+000 1.0e+000 2.00e-001
 2 5.7e+002 1.5e-016 6.4e-017 +4.57e+001 -1.67e+003 1.6e+001 9.6e-001 1.00e-001
 3 6.0e+001 1.3e-016 6.4e-017 -4.26e+000 -1.84e+002 4.4e+000 9.7e-001 1.00e-001
 4 6.4e+000 1.6e-016 4.0e-018 -9.35e+000 -2.85e+001 1.1e+001 9.3e-001 1.00e-001
 5 1.0e+000 1.4e-016 2.0e-018 -9.55e+000 -1.26e+001 1.3e+000 7.5e-001 1.00e-001
 6 2.2e-001 1.3e-016 0.0e+000 -1.03e+001 -1.10e+001 1.2e+000 9.5e-001 1.00e-001
 7 2.8e-002 1.3e-016 1.2e-017 -1.04e+001 -1.05e+001 1.3e+000 9.5e-001 1.00e-001
 8 3.2e-003 1.3e-016 2.2e-017 -1.04e+001 -1.04e+001 1.4e+000 9.6e-001 1.00e-001
 9 3.5e-004 1.4e-016 1.6e-017 -1.04e+001 -1.04e+001 1.5e+000 9.7e-001 1.00e-001
10 3.6e-005 1.1e-016 7.6e-017 -1.04e+001 -1.04e+001 1.5e+000 9.7e-001 1.00e-001
11 3.6e-006 1.1e-016 1.0e-016 -1.04e+001 -1.04e+001 1.5e+000 9.6e-001 1.00e-001
12 3.8e-007 1.2e-016 3.1e-015 -1.04e+001 -1.04e+001 1.5e+000 9.5e-001 1.00e-001
13 4.2e-008 1.2e-016 2.2e-015 -1.04e+001 -1.04e+001 1.5e+000 9.5e-001 1.00e-001

phase.value  = pdOPT     
   Iteration = 13
          mu = +4.1819623911957628e-008
relative gap = +1.2031684931323934e-008
        gap  = +1.2546233563170972e-007
     digits  = +7.9196735492905823e+000
objValPrimal = -1.0427661262165593e+001
objValDual   = -1.0427661387627928e+001
p.feas.error = +1.1546319456101628e-014
d.feas.error = +7.6809669735666830e-012
total time   = 0.008577
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
 Predictor time  =       0.002482,  30.733036
 Corrector time  =       0.003171,  39.264487
 Make bMat time  =       0.001488,  18.424963
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.002197,  27.204061
 Make gVec Mul   =       0.000497,  6.154037
 Make gVec time  =       0.000497,  6.154037
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000000,  0.000000
 solve           =       0.000000,  0.000000
 sumDz           =       0.000496,  6.141654
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.000975,  12.072808
 makedXdZ        =       0.001471,  18.214463
 xMatTime        =       0.000499,  6.178801
 zMatTime        =       0.001121,  13.880634
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000000,  0.000000
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000803,  9.943041
 EigTime         =       0.000000,  0.000000
 sub_total_bMat  =       0.006588,  81.575037
 Main Loop       =       0.008076,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000501,  6.203566
 Total           =       0.008577,  106.203566

xVec = 
{+7.926e-001,+9.061e-001}
xMat = 
{
{ {+5.465e+000,+5.476e+000,+9.415e-001 },
  {+5.476e+000,+1.068e+001,+5.061e+000 },
  {+9.415e-001,+5.061e+000,+3.428e+000 }   }
}
yMat = 
{
{ {+2.159e-001,-2.752e-001,+3.470e-001 },
  {-2.752e-001,+3.506e-001,-4.422e-001 },
  {+3.470e-001,-4.422e-001,+5.576e-001 }   }
}
    main loop time = 0.008076
        total time = 0.008577
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000501
SDPA end at [Wed Nov 11 18:14:17 2020]
ALL TIME = 0.010059
