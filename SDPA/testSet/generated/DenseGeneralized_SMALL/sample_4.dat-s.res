SDPA start at [Wed Nov 04 15:48:15 2020]
param  is ./param.sdpa 
data   is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseGeneralized_SMALL\sample_4.dat-s  : sparse
out    is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseGeneralized_SMALL\sample_4.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 +4.60e+003 6.9e-001 1.0e+000 2.00e-001
 1 2.8e+003 3.1e-001 3.5e-016 +3.27e+001 +9.82e+003 1.9e-001 9.0e+001 1.16e+001
 2 2.1e+006 2.6e-001 9.0e-013 +1.61e+001 +2.43e+007 1.9e-001 9.0e+001 1.16e+001

phase.value  = dUNBD     
   Iteration = 2
          mu = +2.0929846270314648e+006
relative gap = +1.9999973503300230e+000
        gap  = -2.4260431019021191e+007
     digits  = -3.0102942029507512e-001
objValPrimal = +1.6070555215845253e+001
objValDual   = +2.4260447089576408e+007
p.feas.error = +2.9666943672419080e+001
d.feas.error = +2.3283064365386963e-009
total time   = 0.003969
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
 Predictor time  =       0.001488,  42.844803
 Corrector time  =       0.000537,  15.462136
 Make bMat time  =       0.000992,  28.563202
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.000000,  0.000000
 Make gVec Mul   =       0.000496,  14.281601
 Make gVec time  =       0.001033,  29.743737
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000489,  14.080046
 solve           =       0.000000,  0.000000
 sumDz           =       0.000000,  0.000000
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.000000,  0.000000
 makedXdZ        =       0.000000,  0.000000
 xMatTime        =       0.000000,  0.000000
 zMatTime        =       0.000463,  13.331414
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000489,  14.080046
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000000,  0.000000
 EigTime         =       0.000489,  14.080046
 sub_total_bMat  =       0.002481,  71.436798
 Main Loop       =       0.003473,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000496,  14.281601
 Total           =       0.003969,  114.281601

xVec = 
{-7.268e-001,+2.019e-001}
xMat = 
{
{ {+2.303e+001,+1.293e+001,-1.754e+001 },
  {+1.293e+001,+1.775e+001,-5.312e+000 },
  {-1.754e+001,-5.312e+000,+1.778e+001 }   }
}
yMat = 
{
{ {+3.291e+005,-1.070e+005,+2.712e+005 },
  {-1.070e+005,+2.173e+005,+7.571e+003 },
  {+2.712e+005,+7.571e+003,+4.051e+005 }   }
}
    main loop time = 0.003473
        total time = 0.003969
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000496
SDPA end at [Wed Nov 04 15:48:15 2020]
ALL TIME = 0.005457
