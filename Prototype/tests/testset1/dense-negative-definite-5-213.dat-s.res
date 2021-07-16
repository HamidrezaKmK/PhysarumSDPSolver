SDPA start at [Thu Jul 15 21:27:24 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-213.dat-s  : sparse
"Dense tests with 5 * 5 matrices and 1-3 constraints"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-213.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -2.50e+003 9.2e-001 1.0e+000 2.00e-001
 1 1.6e+003 8.2e-002 0.0e+000 +7.57e-001 -3.19e+003 1.0e+000 2.0e+000 2.00e-001
 2 2.1e+002 9.2e-018 3.1e-016 +5.11e-001 -1.03e+003 9.0e+001 9.6e-001 1.00e-001
 3 2.7e+001 9.2e-018 2.1e-017 -1.87e-001 -1.38e+002 2.2e+001 9.7e-001 1.00e-001
 4 3.1e+000 1.4e-017 3.0e-018 -1.85e+000 -1.74e+001 9.8e-001 9.8e-001 1.00e-001
 5 3.7e-001 1.1e-017 3.0e-018 -1.83e+000 -3.70e+000 1.1e+000 9.7e-001 1.00e-001
 6 4.4e-002 9.2e-018 1.5e-018 -2.02e+000 -2.24e+000 1.1e+000 9.7e-001 1.00e-001
 7 4.9e-003 9.2e-018 0.0e+000 -2.04e+000 -2.06e+000 1.2e+000 9.8e-001 1.00e-001
 8 5.1e-004 1.8e-017 0.0e+000 -2.04e+000 -2.04e+000 1.2e+000 9.8e-001 1.00e-001
 9 5.2e-005 9.2e-018 0.0e+000 -2.04e+000 -2.04e+000 1.2e+000 9.9e-001 1.00e-001
10 5.2e-006 1.8e-017 0.0e+000 -2.04e+000 -2.04e+000 1.2e+000 9.9e-001 1.00e-001
11 5.2e-007 1.8e-017 3.0e-018 -2.04e+000 -2.04e+000 1.2e+000 9.9e-001 1.00e-001
12 5.2e-008 1.8e-017 0.0e+000 -2.04e+000 -2.04e+000 9.0e-001 9.0e-001 1.00e-001

phase.value  = pdFEAS    
   Iteration = 12
          mu = +5.1881808138531940e-008
relative gap = +1.2720779559668054e-007
        gap  = +2.5940904091470429e-007
     digits  = +6.8954862732718736e+000
objValPrimal = -2.0392541447518600e+000
objValDual   = -2.0392544041609009e+000
p.feas.error = +1.7763568394002505e-015
d.feas.error = +0.0000000000000000e+000
total time   = 0.010143
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
 Predictor time  =       0.003834,  37.799468
 Corrector time  =       0.001251,  12.333629
 Make bMat time  =       0.001862,  18.357488
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.000969,  9.553387
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.000000,  0.000000
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.001021,  10.066055
 solve           =       0.000000,  0.000000
 sumDz           =       0.000977,  9.632259
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.001277,  12.589964
 makedXdZ        =       0.002254,  22.222222
 xMatTime        =       0.001018,  10.036478
 zMatTime        =       0.003019,  29.764370
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.001021,  10.066055
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000000,  0.000000
 EigTime         =       0.001021,  10.066055
 sub_total_bMat  =       0.008281,  81.642512
 Main Loop       =       0.010143,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000000,  0.000000
 Total           =       0.010143,  100.000000

xVec = 
{-8.497e-002}
xMat = 
{
{ {+4.433e+000,+1.067e+000,-9.097e-001,-1.818e+000,+7.211e-001 },
  {+1.067e+000,+6.651e+000,+1.091e+000,-1.098e+000,-1.424e+000 },
  {-9.097e-001,+1.091e+000,+5.261e+000,+2.216e+000,-1.679e-001 },
  {-1.818e+000,-1.098e+000,+2.216e+000,+1.633e+000,+1.308e-001 },
  {+7.211e-001,-1.424e+000,-1.679e-001,+1.308e-001,+4.983e+000 }   }
}
yMat = 
{
{ {+5.078e-002,+3.171e-002,-7.232e-002,+1.765e-001,-5.354e-003 },
  {+3.171e-002,+1.980e-002,-4.516e-002,+1.102e-001,-3.343e-003 },
  {-7.232e-002,-4.516e-002,+1.030e-001,-2.513e-001,+7.624e-003 },
  {+1.765e-001,+1.102e-001,-2.513e-001,+6.133e-001,-1.861e-002 },
  {-5.354e-003,-3.343e-003,+7.624e-003,-1.861e-002,+5.645e-004 }   }
}
    main loop time = 0.010143
        total time = 0.010143
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000000
SDPA end at [Thu Jul 15 21:27:24 2021]
ALL TIME = 0.011987
