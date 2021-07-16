SDPA start at [Thu Jul 15 21:27:24 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-217.dat-s  : sparse
"Dense tests with 5 * 5 matrices and 1-3 constraints"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-217.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -3.30e+003 9.3e-001 1.0e+000 2.00e-001
 1 1.6e+003 6.6e-002 2.7e-016 +4.62e-002 -4.05e+003 1.0e+000 1.5e+000 2.00e-001
 2 2.2e+002 9.3e-018 4.1e-016 -2.09e-001 -1.10e+003 9.0e+001 9.6e-001 1.00e-001
 3 2.9e+001 9.3e-018 1.4e-016 -2.12e+000 -1.47e+002 9.8e-001 9.8e-001 1.00e-001
 4 3.6e+000 1.9e-017 1.4e-017 -2.03e+000 -1.98e+001 2.1e+000 9.0e-001 1.00e-001
 5 5.3e-001 1.9e-017 6.3e-018 -3.24e+000 -5.90e+000 1.9e+000 7.2e-001 1.00e-001
 6 1.2e-001 1.9e-017 4.2e-018 -3.74e+000 -4.36e+000 1.1e+000 9.4e-001 1.00e-001
 7 1.7e-002 1.9e-017 8.4e-018 -3.80e+000 -3.89e+000 1.3e+000 9.4e-001 1.00e-001
 8 2.2e-003 1.9e-017 2.1e-018 -3.81e+000 -3.82e+000 1.2e+000 9.7e-001 1.00e-001
 9 2.6e-004 1.9e-017 2.1e-018 -3.81e+000 -3.81e+000 1.2e+000 9.8e-001 1.00e-001
10 2.7e-005 1.9e-017 2.1e-018 -3.81e+000 -3.81e+000 1.2e+000 9.8e-001 1.00e-001
11 2.8e-006 1.9e-017 3.2e-018 -3.81e+000 -3.81e+000 1.3e+000 9.8e-001 1.00e-001
12 2.8e-007 9.3e-018 2.1e-018 -3.81e+000 -3.81e+000 1.3e+000 9.8e-001 1.00e-001
13 2.8e-008 1.9e-017 1.3e-017 -3.81e+000 -3.81e+000 1.3e+000 9.8e-001 1.00e-001

phase.value  = pdOPT     
   Iteration = 13
          mu = +2.7718664652454094e-008
relative gap = +3.6362998960047946e-008
        gap  = +1.3859332659293955e-007
     digits  = +7.4393403064706654e+000
objValPrimal = -3.8113832202172775e+000
objValDual   = -3.8113833588106041e+000
p.feas.error = +1.7763568394002505e-015
d.feas.error = +2.1316282072803006e-014
total time   = 0.012490
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
 Predictor time  =       0.007001,  60.952464
 Corrector time  =       0.000000,  0.000000
 Make bMat time  =       0.003224,  28.068954
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.001001,  8.714957
 Make gVec Mul   =       0.000990,  8.619189
 Make gVec time  =       0.000990,  8.619189
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.003995,  34.781473
 solve           =       0.000000,  0.000000
 sumDz           =       0.000454,  3.952638
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.001332,  11.596726
 makedXdZ        =       0.001786,  15.549364
 xMatTime        =       0.000000,  0.000000
 zMatTime        =       0.000490,  4.266063
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.002996,  26.083928
 EigzMatTime     =       0.000999,  8.697545
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000000,  0.000000
 EigTime         =       0.003995,  34.781473
 sub_total_bMat  =       0.008262,  71.931046
 Main Loop       =       0.011486,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.001004,  8.741076
 Total           =       0.012490,  108.741076

xVec = 
{-2.094e-001,-5.022e-002}
xMat = 
{
{ {+8.173e+000,+2.970e+000,-6.348e-001,+2.260e+000,-3.343e+000 },
  {+2.970e+000,+5.770e+000,+2.118e+000,-4.636e+000,-3.177e+000 },
  {-6.348e-001,+2.118e+000,+1.706e+000,-2.396e+000,-1.804e+000 },
  {+2.260e+000,-4.636e+000,-2.396e+000,+7.679e+000,-2.349e-001 },
  {-3.343e+000,-3.177e+000,-1.804e+000,-2.349e-001,+5.860e+000 }   }
}
yMat = 
{
{ {+7.071e-002,-1.509e-001,+2.790e-002,-1.044e-001,-3.708e-002 },
  {-1.509e-001,+3.221e-001,-5.955e-002,+2.227e-001,+7.914e-002 },
  {+2.790e-002,-5.955e-002,+1.101e-002,-4.118e-002,-1.463e-002 },
  {-1.044e-001,+2.227e-001,-4.118e-002,+1.540e-001,+5.473e-002 },
  {-3.708e-002,+7.914e-002,-1.463e-002,+5.473e-002,+1.945e-002 }   }
}
    main loop time = 0.011486
        total time = 0.012490
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.001004
SDPA end at [Thu Jul 15 21:27:24 2021]
ALL TIME = 0.012490
