SDPA start at [Thu Jul 15 21:27:24 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-27.dat-s  : sparse
"Dense tests with 5 * 5 matrices and 1-3 constraints"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-27.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -3.10e+003 8.8e-001 1.0e+000 2.00e-001
 1 2.1e+003 1.2e-001 1.9e-016 +8.62e+000 -3.85e+003 1.0e+000 1.9e+000 2.00e-001
 2 3.3e+002 9.3e-018 7.7e-016 +2.66e+000 -1.67e+003 7.3e+001 9.7e-001 1.00e-001
 3 4.1e+001 9.3e-018 1.3e-016 -2.72e+000 -2.09e+002 9.8e-001 9.8e-001 1.00e-001
 4 4.8e+000 9.3e-018 1.2e-017 -2.44e+000 -2.65e+001 1.6e+000 9.2e-001 1.00e-001
 5 6.9e-001 9.3e-018 4.8e-018 -3.94e+000 -7.41e+000 1.8e+000 8.8e-001 1.00e-001
 6 1.2e-001 9.3e-018 2.1e-018 -4.19e+000 -4.77e+000 1.6e+000 9.5e-001 1.00e-001
 7 1.4e-002 9.3e-018 2.4e-018 -4.22e+000 -4.29e+000 1.8e+000 9.5e-001 1.00e-001
 8 1.8e-003 9.3e-018 2.4e-018 -4.22e+000 -4.23e+000 2.1e+000 9.6e-001 1.00e-001
 9 2.0e-004 9.3e-018 7.2e-018 -4.22e+000 -4.22e+000 2.0e+000 9.7e-001 1.00e-001
10 2.1e-005 9.3e-018 3.2e-017 -4.22e+000 -4.22e+000 1.8e+000 9.8e-001 1.00e-001
11 2.2e-006 1.9e-017 5.9e-017 -4.22e+000 -4.22e+000 1.8e+000 9.8e-001 1.00e-001
12 2.2e-007 9.3e-018 6.6e-017 -4.22e+000 -4.22e+000 1.8e+000 9.8e-001 1.00e-001
13 2.2e-008 9.3e-018 1.1e-015 -4.22e+000 -4.22e+000 1.8e+000 9.8e-001 1.00e-001

phase.value  = pdOPT     
   Iteration = 13
          mu = +2.1891653911865207e-008
relative gap = +2.5921790447196939e-008
        gap  = +1.0945780815063699e-007
     digits  = +7.5863350045575038e+000
objValPrimal = -4.2226175292533492e+000
objValDual   = -4.2226176387111574e+000
p.feas.error = +8.8817841970012523e-016
d.feas.error = +3.2400748750660568e-012
total time   = 0.009850
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
 Predictor time  =       0.005068,  51.451777
 Corrector time  =       0.000148,  1.502538
 Make bMat time  =       0.003255,  33.045685
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.000294,  2.984772
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.000182,  1.847716
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.001994,  20.243655
 solve           =       0.000000,  0.000000
 sumDz           =       0.001248,  12.670051
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.000237,  2.406091
 makedXdZ        =       0.001485,  15.076142
 xMatTime        =       0.000998,  10.131980
 zMatTime        =       0.000642,  6.517766
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.001994,  20.243655
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.001000,  10.152284
 EigTime         =       0.001994,  20.243655
 sub_total_bMat  =       0.006595,  66.954315
 Main Loop       =       0.009850,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000000,  0.000000
 Total           =       0.009850,  100.000000

xVec = 
{-1.176e-001,+2.072e-002,+4.918e-002}
xMat = 
{
{ {+5.880e+000,+2.587e+000,+2.636e+000,-1.426e+000,-2.581e-001 },
  {+2.587e+000,+6.208e+000,-2.568e-001,-1.711e+000,-2.319e+000 },
  {+2.636e+000,-2.568e-001,+8.400e+000,+2.268e+000,-7.879e-002 },
  {-1.426e+000,-1.711e+000,+2.268e+000,+4.442e+000,+1.854e+000 },
  {-2.581e-001,-2.319e+000,-7.879e-002,+1.854e+000,+1.847e+000 }   }
}
yMat = 
{
{ {+9.657e-002,-9.866e-002,-7.127e-002,+1.320e-001,-2.459e-001 },
  {-9.866e-002,+1.008e-001,+7.281e-002,-1.349e-001,+2.512e-001 },
  {-7.127e-002,+7.281e-002,+5.259e-002,-9.741e-002,+1.815e-001 },
  {+1.320e-001,-1.349e-001,-9.741e-002,+1.804e-001,-3.361e-001 },
  {-2.459e-001,+2.512e-001,+1.815e-001,-3.361e-001,+6.262e-001 }   }
}
    main loop time = 0.009850
        total time = 0.009850
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000000
SDPA end at [Thu Jul 15 21:27:24 2021]
ALL TIME = 0.011210
