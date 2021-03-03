SDPA start at [Wed Nov 11 18:14:17 2020]
param  is ./param.sdpa 
data   is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseGeneralized_SMALL\sample_2.dat-s  : sparse
out    is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseGeneralized_SMALL\sample_2.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 +3.30e+003 6.7e-001 1.0e+000 2.00e-001
 1 3.8e+003 3.3e-001 3.6e-016 -3.80e-001 +8.35e+003 2.2e-001 9.0e+001 4.39e+000
 2 1.1e+006 2.6e-001 4.4e-013 -1.90e+000 +1.40e+007 2.2e-001 9.0e+001 4.39e+000

phase.value  = dUNBD     
   Iteration = 2
          mu = +1.1302439678951760e+006
relative gap = +2.0000000000000000e+000
        gap  = -1.3985709147273878e+007
     digits  = -3.0102999566398120e-001
objValPrimal = -1.9040494509127666e+000
objValDual   = +1.3985707243224427e+007
p.feas.error = +3.1008193732145269e+001
d.feas.error = +6.9849193096160889e-010
total time   = 0.003825
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
 Predictor time  =       0.001493,  42.939316
 Corrector time  =       0.000495,  14.236411
 Make bMat time  =       0.000989,  28.444061
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.000495,  14.236411
 Make gVec Mul   =       0.000504,  14.495255
 Make gVec time  =       0.000504,  14.495255
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000000,  0.000000
 solve           =       0.000000,  0.000000
 sumDz           =       0.000000,  0.000000
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.000000,  0.000000
 makedXdZ        =       0.000000,  0.000000
 xMatTime        =       0.000497,  14.293932
 zMatTime        =       0.000000,  0.000000
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000000,  0.000000
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000496,  14.265171
 EigTime         =       0.000000,  0.000000
 sub_total_bMat  =       0.002488,  71.555939
 Main Loop       =       0.003477,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000348,  10.008628
 Total           =       0.003825,  110.008628

xVec = 
{+3.708e-001,+1.190e-001}
xMat = 
{
{ {+2.600e+001,+3.984e+000,+1.184e+000 },
  {+3.984e+000,+1.940e+001,-9.100e+000 },
  {+1.184e+000,-9.100e+000,+6.471e+000 }   }
}
yMat = 
{
{ {+6.637e+004,-5.253e+004,-5.540e+004 },
  {-5.253e+004,+1.810e+005,+1.706e+005 },
  {-5.540e+004,+1.706e+005,+2.796e+005 }   }
}
    main loop time = 0.003477
        total time = 0.003825
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000348
SDPA end at [Wed Nov 11 18:14:17 2020]
ALL TIME = 0.005827
