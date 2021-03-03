SDPA start at [Wed Nov 11 18:14:18 2020]
param  is ./param.sdpa 
data   is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseNegativeDefinite_SMALL\sample_6.dat-s  : sparse
out    is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseNegativeDefinite_SMALL\sample_6.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -1.30e+003 7.9e-001 1.0e+000 2.00e-001
 1 1.6e+003 2.1e-001 2.1e-016 +1.62e+002 -6.25e+002 9.4e-001 9.4e-001 2.00e-001
 2 3.2e+002 1.3e-002 3.1e-016 +3.04e+001 -6.41e+002 1.0e+000 1.1e+000 2.00e-001
 3 6.0e+001 3.6e-017 4.2e-016 +1.87e+001 -1.63e+002 5.6e+000 8.9e-001 1.00e-001
 4 6.6e+000 2.3e-017 1.6e-016 -1.50e+000 -2.13e+001 1.2e+000 9.6e-001 1.00e-001
 5 7.9e-001 2.5e-017 1.6e-017 -3.55e+000 -5.93e+000 1.5e+000 9.5e-001 1.00e-001
 6 8.7e-002 2.6e-017 1.6e-018 -3.75e+000 -4.01e+000 1.5e+000 9.6e-001 1.00e-001
 7 9.8e-003 2.7e-017 0.0e+000 -3.77e+000 -3.80e+000 1.6e+000 9.6e-001 1.00e-001
 8 1.0e-003 2.5e-017 1.6e-018 -3.78e+000 -3.78e+000 1.7e+000 9.7e-001 1.00e-001
 9 1.1e-004 2.8e-017 1.1e-017 -3.78e+000 -3.78e+000 1.7e+000 9.6e-001 1.00e-001
10 1.1e-005 2.9e-017 9.8e-018 -3.78e+000 -3.78e+000 1.7e+000 9.6e-001 1.00e-001
11 1.2e-006 3.3e-017 1.5e-016 -3.78e+000 -3.78e+000 1.8e+000 9.5e-001 1.00e-001
12 1.3e-007 3.2e-017 6.9e-016 -3.78e+000 -3.78e+000 1.8e+000 9.5e-001 1.00e-001

phase.value  = pdOPT     
   Iteration = 12
          mu = +1.2577686359094287e-007
relative gap = +9.9948884920751396e-008
        gap  = +3.7733132884909537e-007
     digits  = +7.0002220467231124e+000
objValPrimal = -3.7752428182801170e+000
objValDual   = -3.7752431956114458e+000
p.feas.error = +3.1086244689504383e-015
d.feas.error = +3.0269120543380268e-012
total time   = 0.006941
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
 Predictor time  =       0.003477,  50.093646
 Corrector time  =       0.001993,  28.713442
 Make bMat time  =       0.001982,  28.554963
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.001494,  21.524276
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.000489,  7.045094
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000000,  0.000000
 solve           =       0.000000,  0.000000
 sumDz           =       0.000992,  14.291889
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.000000,  0.000000
 makedXdZ        =       0.000992,  14.291889
 xMatTime        =       0.000000,  0.000000
 zMatTime        =       0.000975,  14.046967
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000000,  0.000000
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000496,  7.145944
 EigTime         =       0.000000,  0.000000
 sub_total_bMat  =       0.004959,  71.445037
 Main Loop       =       0.006941,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000000,  0.000000
 Total           =       0.006941,  100.000000

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
    main loop time = 0.006941
        total time = 0.006941
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000000
SDPA end at [Wed Nov 11 18:14:18 2020]
ALL TIME = 0.007936
