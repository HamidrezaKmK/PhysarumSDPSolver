SDPA start at [Wed Nov 11 18:14:17 2020]
param  is ./param.sdpa 
data   is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseGeneralized_SMALL\sample_5.dat-s  : sparse
out    is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseGeneralized_SMALL\sample_5.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 +3.50e+003 7.1e-001 1.0e+000 2.00e-001
 1 3.2e+003 2.9e-001 1.3e-015 -5.87e+000 +7.99e+003 2.5e-001 9.0e+001 3.53e+000
 2 8.3e+005 2.2e-001 7.1e-013 -1.30e+000 +8.42e+006 2.5e-001 9.0e+001 3.53e+000

phase.value  = dUNBD     
   Iteration = 2
          mu = +8.2866832897127897e+005
relative gap = +2.0000000000000000e+000
        gap  = -8.4224741278487016e+006
     digits  = -3.0102999566398120e-001
objValPrimal = -1.3022340487007213e+000
objValDual   = +8.4224728256146535e+006
p.feas.error = +2.6188937052456996e+001
d.feas.error = +6.9849193096160889e-010
total time   = 0.003963
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
 Predictor time  =       0.001986,  57.200461
 Corrector time  =       0.000000,  0.000000
 Make bMat time  =       0.001017,  29.291475
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.000000,  0.000000
 Make gVec Mul   =       0.000499,  14.372120
 Make gVec time  =       0.000499,  14.372120
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000497,  14.314516
 solve           =       0.000000,  0.000000
 sumDz           =       0.000000,  0.000000
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.000470,  13.536866
 makedXdZ        =       0.000470,  13.536866
 xMatTime        =       0.000000,  0.000000
 zMatTime        =       0.000000,  0.000000
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000497,  14.314516
 EigzMatTime     =       0.000000,  0.000000
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000989,  28.485023
 EigTime         =       0.000497,  14.314516
 sub_total_bMat  =       0.002455,  70.708525
 Main Loop       =       0.003472,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000491,  14.141705
 Total           =       0.003963,  114.141705

xVec = 
{-2.614e-002,+1.381e-001}
xMat = 
{
{ {+8.088e+000,-8.172e+000,-7.053e+000 },
  {-8.172e+000,+1.362e+001,+8.986e+000 },
  {-7.053e+000,+8.986e+000,+1.572e+001 }   }
}
yMat = 
{
{ {+1.327e+005,+6.189e+003,+6.365e+004 },
  {+6.189e+003,+1.275e+005,-9.469e+004 },
  {+6.365e+004,-9.469e+004,+1.513e+005 }   }
}
    main loop time = 0.003472
        total time = 0.003963
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000491
SDPA end at [Wed Nov 11 18:14:17 2020]
ALL TIME = 0.005453
