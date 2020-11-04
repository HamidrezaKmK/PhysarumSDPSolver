SDPA start at [Wed Nov 04 15:48:15 2020]
param  is ./param.sdpa 
data   is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseGeneralized_SMALL\sample_8.dat-s  : sparse
out    is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseGeneralized_SMALL\sample_8.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -2.00e+003 8.6e-001 1.0e+000 2.00e-001
 1 2.3e+003 1.4e-001 4.2e-016 +1.12e-001 -1.96e+003 8.1e-001 1.4e+000 2.00e-001
 2 4.4e+002 2.5e-002 3.1e-016 -2.47e+000 -1.54e+002 5.2e-001 1.1e+000 2.00e-001
 3 1.8e+002 1.2e-002 1.7e-015 -2.91e+000 +8.93e+002 4.6e-002 9.0e+001 1.41e+002
 4 2.1e+006 1.2e-002 2.1e-011 -3.05e+000 +1.82e+007 4.6e-002 9.0e+001 1.41e+002

phase.value  = dUNBD     
   Iteration = 4
          mu = +2.1293576505766800e+006
relative gap = +2.0000000000000000e+000
        gap  = -1.8242710479180969e+007
     digits  = -3.0102999566398120e-001
objValPrimal = -3.0520585079987175e+000
objValDual   = +1.8242707427122463e+007
p.feas.error = +1.1387340638951158e+000
d.feas.error = +2.2351741790771484e-008
total time   = 0.006436
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
 Predictor time  =       0.003469,  58.331932
 Corrector time  =       0.000000,  0.000000
 Make bMat time  =       0.001468,  24.684715
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.001008,  16.949723
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.000000,  0.000000
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000495,  8.323524
 solve           =       0.000000,  0.000000
 sumDz           =       0.000993,  16.697495
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.000000,  0.000000
 makedXdZ        =       0.000993,  16.697495
 xMatTime        =       0.000000,  0.000000
 zMatTime        =       0.000498,  8.373970
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000495,  8.323524
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000709,  11.921977
 EigTime         =       0.000495,  8.323524
 sub_total_bMat  =       0.004479,  75.315285
 Main Loop       =       0.005947,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000489,  8.222633
 Total           =       0.006436,  108.222633

xVec = 
{-5.463e-001,+1.199e-001}
xMat = 
{
{ {+1.736e+001,+1.349e+000,+2.844e+000 },
  {+1.349e+000,+1.402e-001,+1.119e-001 },
  {+2.844e+000,+1.119e-001,+2.669e+000 }   }
}
yMat = 
{
{ {+4.681e+005,-2.464e+006,+2.962e+004 },
  {-2.464e+006,+1.992e+007,-1.358e+006 },
  {+2.962e+004,-1.358e+006,+8.424e+005 }   }
}
    main loop time = 0.005947
        total time = 0.006436
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000489
SDPA end at [Wed Nov 04 15:48:15 2020]
ALL TIME = 0.007438
