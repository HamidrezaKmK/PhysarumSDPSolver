SDPA start at [Wed Nov 11 18:14:17 2020]
param  is ./param.sdpa 
data   is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseGeneralized_SMALL\sample_6.dat-s  : sparse
out    is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseGeneralized_SMALL\sample_6.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 +8.00e+002 6.7e-001 9.3e-001 2.00e-001
 1 2.7e+003 3.3e-001 6.9e-002 +1.20e+002 +4.27e+003 4.4e-001 1.0e+000 7.97e-001
 2 2.3e+003 1.9e-001 5.9e-016 +3.04e+001 +2.32e+004 7.8e-003 9.0e+001 5.83e+002
 3 1.2e+008 1.9e-001 3.9e-011 +4.64e+001 +1.84e+009 7.8e-003 9.0e+001 5.83e+002

phase.value  = pdINF     
   Iteration = 3
          mu = +1.2288145622727568e+008
relative gap = +1.9999998994424451e+000
        gap  = -1.8449801353203785e+009
     digits  = -3.0102997382818503e-001
objValPrimal = +4.6381675202737952e+001
objValDual   = +1.8449801817020538e+009
p.feas.error = +2.0605473492827144e+001
d.feas.error = +1.1920928955078125e-007
total time   = 0.002975
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
 Predictor time  =       0.001490,  50.084034
 Corrector time  =       0.000000,  0.000000
 Make bMat time  =       0.000496,  16.672269
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.000000,  0.000000
 Make gVec Mul   =       0.000495,  16.638655
 Make gVec time  =       0.000994,  33.411765
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000496,  16.672269
 solve           =       0.000000,  0.000000
 sumDz           =       0.000000,  0.000000
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.000000,  0.000000
 makedXdZ        =       0.000000,  0.000000
 xMatTime        =       0.000000,  0.000000
 zMatTime        =       0.000496,  16.672269
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000496,  16.672269
 EigzMatTime     =       0.000000,  0.000000
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000493,  16.571429
 EigTime         =       0.000496,  16.672269
 sub_total_bMat  =       0.002479,  83.327731
 Main Loop       =       0.002975,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000000,  0.000000
 Total           =       0.002975,  100.000000

xVec = 
{+1.424e+000,+5.609e-001}
xMat = 
{
{ {+3.095e+001,-1.738e+001,+1.875e+001 },
  {-1.738e+001,+3.122e+001,-3.205e+001 },
  {+1.875e+001,-3.205e+001,+3.338e+001 }   }
}
yMat = 
{
{ {+8.660e+006,+7.450e+006,+1.326e+006 },
  {+7.450e+006,+5.435e+007,+4.132e+007 },
  {+1.326e+006,+4.132e+007,+3.778e+007 }   }
}
    main loop time = 0.002975
        total time = 0.002975
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000000
SDPA end at [Wed Nov 11 18:14:17 2020]
ALL TIME = 0.005455
