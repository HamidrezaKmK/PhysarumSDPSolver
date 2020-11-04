SDPA start at [Wed Nov 04 15:48:16 2020]
param  is ./param.sdpa 
data   is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseNegativeDefinite_SMALL\sample_3.dat-s  : sparse
out    is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseNegativeDefinite_SMALL\sample_3.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -1.40e+003 8.5e-001 1.0e+000 2.00e-001
 1 1.8e+003 1.5e-001 0.0e+000 +8.24e+001 -9.64e+002 9.6e-001 4.4e+000 2.00e-001
 2 3.0e+002 5.2e-003 8.1e-016 +1.04e+001 -6.82e+002 1.0e+000 1.1e+000 2.00e-001
 3 5.2e+001 2.3e-018 2.4e-016 +6.17e+000 -1.50e+002 3.4e+000 9.2e-001 1.00e-001
 4 6.5e+000 9.3e-018 6.3e-017 -5.01e+000 -2.44e+001 1.5e+000 9.3e-001 1.00e-001
 5 8.7e-001 9.3e-018 3.2e-018 -6.35e+000 -8.96e+000 2.4e+000 7.8e-001 1.00e-001
 6 1.4e-001 9.3e-018 8.4e-018 -6.87e+000 -7.30e+000 1.2e+000 7.5e-001 1.00e-001
 7 2.9e-002 9.3e-018 3.0e-017 -7.02e+000 -7.10e+000 1.2e+000 9.3e-001 1.00e-001
 8 3.7e-003 9.3e-018 8.4e-018 -7.03e+000 -7.04e+000 1.2e+000 9.6e-001 1.00e-001
 9 4.2e-004 9.3e-018 6.3e-018 -7.03e+000 -7.03e+000 1.2e+000 9.7e-001 1.00e-001
10 4.5e-005 9.3e-018 2.1e-018 -7.03e+000 -7.03e+000 1.2e+000 9.7e-001 1.00e-001
11 4.6e-006 9.3e-018 6.3e-018 -7.03e+000 -7.03e+000 1.3e+000 9.7e-001 1.00e-001
12 4.7e-007 9.3e-018 6.8e-017 -7.03e+000 -7.03e+000 1.3e+000 9.7e-001 1.00e-001
13 4.7e-008 1.4e-017 3.5e-016 -7.03e+000 -7.03e+000 1.3e+000 9.7e-001 1.00e-001

phase.value  = pdOPT     
   Iteration = 13
          mu = +4.6647007673206176e-008
relative gap = +1.9895864850935259e-008
        gap  = +1.3994117420423891e-007
     digits  = +7.7012371778131303e+000
objValPrimal = -7.0336813132069125e+000
objValDual   = -7.0336814531480867e+000
p.feas.error = +1.3322676295501878e-015
d.feas.error = +1.1937117960769683e-012
total time   = 0.009178
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
 Predictor time  =       0.005711,  62.224886
 Corrector time  =       0.001488,  16.212683
 Make bMat time  =       0.002934,  31.967749
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.000993,  10.819351
 Make gVec Mul   =       0.000541,  5.894530
 Make gVec time  =       0.002034,  22.161691
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000000,  0.000000
 solve           =       0.000000,  0.000000
 sumDz           =       0.000742,  8.084550
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.000000,  0.000000
 makedXdZ        =       0.000742,  8.084550
 xMatTime        =       0.000494,  5.382436
 zMatTime        =       0.000990,  10.786664
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000000,  0.000000
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000000,  0.000000
 EigTime         =       0.000000,  0.000000
 sub_total_bMat  =       0.006244,  68.032251
 Main Loop       =       0.009178,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000000,  0.000000
 Total           =       0.009178,  100.000000

xVec = 
{-1.179e-001,-1.164e-001}
xMat = 
{
{ {+9.977e-001,-2.190e+000,+8.358e-001 },
  {-2.190e+000,+5.011e+000,-1.605e+000 },
  {+8.358e-001,-1.605e+000,+9.577e-001 }   }
}
yMat = 
{
{ {+1.510e+000,+5.135e-001,-4.568e-001 },
  {+5.135e-001,+1.747e-001,-1.554e-001 },
  {-4.568e-001,-1.554e-001,+1.382e-001 }   }
}
    main loop time = 0.009178
        total time = 0.009178
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000000
SDPA end at [Wed Nov 04 15:48:16 2020]
ALL TIME = 0.010944
