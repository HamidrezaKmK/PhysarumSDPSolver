SDPA start at [Thu Jul 15 21:27:24 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-214.dat-s  : sparse
"Dense tests with 5 * 5 matrices and 1-3 constraints"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-214.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -2.60e+003 7.4e-001 1.0e+000 2.00e-001
 1 3.3e+003 2.6e-001 2.1e-016 +6.53e+001 -2.86e+003 1.0e+000 1.0e+000 2.00e-001
 2 6.0e+002 4.0e-017 4.7e-016 +7.66e+000 -2.98e+003 9.0e+001 9.8e-001 1.00e-001
 3 6.9e+001 3.9e-017 3.7e-016 -2.66e+000 -3.47e+002 9.7e-001 9.7e-001 1.00e-001
 4 8.4e+000 3.6e-017 5.5e-018 -2.49e+000 -4.47e+001 1.2e+000 9.1e-001 1.00e-001
 5 1.3e+000 3.7e-017 3.7e-018 -6.62e+000 -1.32e+001 1.2e+000 9.2e-001 1.00e-001
 6 1.9e-001 3.7e-017 1.8e-018 -7.29e+000 -8.26e+000 1.3e+000 9.5e-001 1.00e-001
 7 2.4e-002 4.0e-017 2.8e-018 -7.36e+000 -7.48e+000 1.4e+000 9.4e-001 1.00e-001
 8 3.3e-003 4.0e-017 1.8e-017 -7.37e+000 -7.38e+000 1.5e+000 9.4e-001 1.00e-001
 9 4.3e-004 4.0e-017 1.4e-016 -7.37e+000 -7.37e+000 1.5e+000 9.7e-001 1.00e-001
10 4.6e-005 4.0e-017 3.0e-016 -7.37e+000 -7.37e+000 1.4e+000 9.7e-001 1.00e-001
11 4.9e-006 4.2e-017 9.1e-016 -7.37e+000 -7.37e+000 1.4e+000 9.8e-001 1.00e-001
12 5.1e-007 3.7e-017 6.4e-016 -7.37e+000 -7.37e+000 1.4e+000 9.8e-001 1.00e-001
13 5.1e-008 4.0e-017 1.9e-015 -7.37e+000 -7.37e+000 1.4e+000 9.8e-001 1.00e-001

phase.value  = pdOPT     
   Iteration = 13
          mu = +5.1093268638169319e-008
relative gap = +3.4677527418898224e-008
        gap  = +2.5546792503661209e-007
     digits  = +7.4599518762076720e+000
objValPrimal = -7.3669589391742978e+000
objValDual   = -7.3669591946422228e+000
p.feas.error = +3.7747582837255322e-015
d.feas.error = +7.4535932981234509e-012
total time   = 0.010579
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
 Predictor time  =       0.005153,  53.621228
 Corrector time  =       0.000464,  4.828304
 Make bMat time  =       0.000998,  10.385016
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.000195,  2.029136
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.000047,  0.489074
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000997,  10.374610
 solve           =       0.000000,  0.000000
 sumDz           =       0.000996,  10.364204
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.003381,  35.182102
 makedXdZ        =       0.004377,  45.546306
 xMatTime        =       0.000999,  10.395421
 zMatTime        =       0.000997,  10.374610
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000997,  10.374610
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.001000,  10.405827
 EigTime         =       0.000997,  10.374610
 sub_total_bMat  =       0.008612,  89.614984
 Main Loop       =       0.009610,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000969,  10.083247
 Total           =       0.010579,  110.083247

xVec = 
{-2.261e-001,+6.608e-002,+7.388e-002}
xMat = 
{
{ {+2.438e+000,-2.086e-001,-9.307e-001,+7.841e-001,-1.852e+000 },
  {-2.086e-001,+4.368e+000,-1.357e+000,-7.265e-001,+8.416e-001 },
  {-9.307e-001,-1.357e+000,+1.285e+000,-5.225e-001,+1.137e+000 },
  {+7.841e-001,-7.265e-001,-5.225e-001,+7.720e+000,+2.566e-001 },
  {-1.852e+000,+8.416e-001,+1.137e+000,+2.566e-001,+2.821e+000 }   }
}
yMat = 
{
{ {+5.917e-003,-3.221e-002,-7.226e-002,-9.968e-003,+4.352e-002 },
  {-3.221e-002,+1.753e-001,+3.934e-001,+5.426e-002,-2.369e-001 },
  {-7.226e-002,+3.934e-001,+8.826e-001,+1.217e-001,-5.315e-001 },
  {-9.968e-003,+5.426e-002,+1.217e-001,+1.679e-002,-7.332e-002 },
  {+4.352e-002,-2.369e-001,-5.315e-001,-7.332e-002,+3.201e-001 }   }
}
    main loop time = 0.009610
        total time = 0.010579
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000969
SDPA end at [Thu Jul 15 21:27:24 2021]
ALL TIME = 0.011577
