SDPA start at [Wed Nov 04 15:48:15 2020]
param  is ./param.sdpa 
data   is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseGeneralized_SMALL\sample_3.dat-s  : sparse
out    is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseGeneralized_SMALL\sample_3.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -2.10e+003 1.0e+000 7.5e-001 2.00e-001
 1 3.0e+003 0.0e+000 2.5e-001 +3.13e+002 -1.06e+003 8.9e-001 8.9e-001 2.00e-001
 2 5.8e+002 2.8e-016 2.7e-002 +4.06e+002 -2.29e+002 7.3e+000 1.0e+000 2.00e-001
 3 4.1e+001 2.8e-016 1.4e-017 +9.06e+001 -3.21e+001 1.2e+000 8.9e-001 1.00e-001
 4 5.7e+000 2.8e-016 1.3e-017 +5.75e+001 +4.04e+001 1.2e+000 9.6e-001 1.00e-001
 5 5.9e-001 2.8e-016 5.0e-018 +5.40e+001 +5.22e+001 1.1e+000 9.7e-001 1.00e-001
 6 6.2e-002 3.6e-016 5.7e-018 +5.36e+001 +5.34e+001 1.1e+000 9.8e-001 1.00e-001
 7 6.4e-003 2.8e-016 8.6e-018 +5.36e+001 +5.36e+001 1.1e+000 9.8e-001 1.00e-001
 8 6.4e-004 2.8e-016 1.6e-017 +5.36e+001 +5.36e+001 1.1e+000 9.8e-001 1.00e-001
 9 6.5e-005 2.8e-016 1.4e-016 +5.36e+001 +5.36e+001 1.1e+000 9.8e-001 1.00e-001
10 6.5e-006 2.8e-016 3.0e-016 +5.36e+001 +5.36e+001 1.1e+000 9.8e-001 1.00e-001
11 6.5e-007 2.1e-016 1.5e-015 +5.36e+001 +5.36e+001 1.1e+000 9.8e-001 1.00e-001

phase.value  = pdOPT     
   Iteration = 11
          mu = +6.5335177742061512e-007
relative gap = +3.6580324689778334e-008
        gap  = +1.9600514420403670e-006
     digits  = +7.4367524440112351e+000
objValPrimal = +5.3582123573597606e+001
objValDual   = +5.3582121613546164e+001
p.feas.error = +2.1316282072803006e-014
d.feas.error = +3.6735059438797180e-012
total time   = 0.007110
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
 Predictor time  =       0.004793,  67.412096
 Corrector time  =       0.001328,  18.677918
 Make bMat time  =       0.003304,  46.469761
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.000162,  2.278481
 Make gVec Mul   =       0.000497,  6.990155
 Make gVec time  =       0.001626,  22.869198
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000000,  0.000000
 solve           =       0.000000,  0.000000
 sumDz           =       0.000533,  7.496484
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.000496,  6.976090
 makedXdZ        =       0.001029,  14.472574
 xMatTime        =       0.000496,  6.976090
 zMatTime        =       0.000493,  6.933896
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000000,  0.000000
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000000,  0.000000
 EigTime         =       0.000000,  0.000000
 sub_total_bMat  =       0.003806,  53.530239
 Main Loop       =       0.007110,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000000,  0.000000
 Total           =       0.007110,  100.000000

xVec = 
{-1.494e+000,-1.082e+000}
xMat = 
{
{ {+4.782e+000,-7.323e+000,+1.274e+001 },
  {-7.323e+000,+3.492e+001,-1.472e+001 },
  {+1.274e+001,-1.472e+001,+3.488e+001 }   }
}
yMat = 
{
{ {+4.273e+000,+2.899e-001,-1.438e+000 },
  {+2.899e-001,+1.966e-002,-9.753e-002 },
  {-1.438e+000,-9.753e-002,+4.838e-001 }   }
}
    main loop time = 0.007110
        total time = 0.007110
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000000
SDPA end at [Wed Nov 04 15:48:15 2020]
ALL TIME = 0.009093
