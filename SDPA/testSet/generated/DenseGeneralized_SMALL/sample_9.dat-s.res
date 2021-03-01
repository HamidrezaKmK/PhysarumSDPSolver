SDPA start at [Wed Nov 11 18:14:17 2020]
param  is ./param.sdpa 
data   is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseGeneralized_SMALL\sample_9.dat-s  : sparse
out    is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseGeneralized_SMALL\sample_9.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 +1.10e+003 6.8e-001 1.0e+000 2.00e-001
 1 3.7e+003 3.2e-001 8.8e-017 +6.48e+000 +4.99e+003 2.0e-001 9.0e+001 4.67e+000
 2 1.1e+006 2.6e-001 0.0e+000 +1.28e+001 +1.57e+007 2.0e-001 9.0e+001 4.67e+000

phase.value  = dUNBD     
   Iteration = 2
          mu = +1.1499642269899098e+006
relative gap = +1.9999967542817827e+000
        gap  = -1.5715383027410194e+007
     digits  = -3.0102929086465352e-001
objValPrimal = +1.2751946940561156e+001
objValDual   = +1.5715395779357135e+007
p.feas.error = +3.0107315438485102e+001
d.feas.error = +0.0000000000000000e+000
total time   = 0.002480
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
 Predictor time  =       0.001503,  60.604839
 Corrector time  =       0.000977,  39.395161
 Make bMat time  =       0.000509,  20.524194
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.001475,  59.475806
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.000000,  0.000000
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000000,  0.000000
 solve           =       0.000000,  0.000000
 sumDz           =       0.000496,  20.000000
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.000000,  0.000000
 makedXdZ        =       0.000496,  20.000000
 xMatTime        =       0.000000,  0.000000
 zMatTime        =       0.000000,  0.000000
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000000,  0.000000
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000000,  0.000000
 EigTime         =       0.000000,  0.000000
 sub_total_bMat  =       0.001971,  79.475806
 Main Loop       =       0.002480,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000000,  0.000000
 Total           =       0.002480,  100.000000

xVec = 
{-7.633e-001,+5.659e-001}
xMat = 
{
{ {+3.351e+001,-1.599e+001,+2.374e+001 },
  {-1.599e+001,+2.405e+001,-2.256e+000 },
  {+2.374e+001,-2.256e+000,+2.491e+001 }   }
}
yMat = 
{
{ {+2.486e+005,+8.158e+004,-2.267e+005 },
  {+8.158e+004,+7.538e+004,-5.930e+004 },
  {-2.267e+005,-5.930e+004,+2.573e+005 }   }
}
    main loop time = 0.002480
        total time = 0.002480
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000000
SDPA end at [Wed Nov 11 18:14:17 2020]
ALL TIME = 0.004464
