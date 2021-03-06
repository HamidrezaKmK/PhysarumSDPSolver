SDPA start at [Thu Jul 15 21:27:24 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset0\sample_0.dat-s  : sparse
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset0\sample_0.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -1.10e+003 8.9e-001 9.6e-001 2.00e-001
 1 1.5e+003 1.1e-001 4.4e-002 +1.06e+002 -9.68e+002 1.0e+000 1.0e+000 2.00e-001
 2 3.4e+002 3.7e-017 1.3e-016 +4.67e+001 -9.81e+002 6.8e+000 9.4e-001 1.00e-001
 3 4.0e+001 6.4e-017 2.5e-017 +1.28e+000 -1.20e+002 2.3e+000 9.7e-001 1.00e-001
 4 4.3e+000 6.4e-017 1.2e-017 -3.28e+000 -1.61e+001 4.2e+000 9.4e-001 1.00e-001
 5 4.9e-001 6.4e-017 2.1e-018 -3.85e+000 -5.34e+000 5.1e+000 9.5e-001 1.00e-001
 6 5.3e-002 6.4e-017 0.0e+000 -3.92e+000 -4.08e+000 2.3e+000 9.6e-001 1.00e-001
 7 5.5e-003 6.4e-017 2.1e-018 -3.93e+000 -3.95e+000 2.2e+000 9.6e-001 1.00e-001
 8 5.7e-004 6.4e-017 2.1e-017 -3.93e+000 -3.93e+000 2.1e+000 9.6e-001 1.00e-001
 9 5.8e-005 6.4e-017 1.0e-017 -3.93e+000 -3.93e+000 2.1e+000 9.6e-001 1.00e-001
10 5.9e-006 6.2e-017 9.8e-017 -3.93e+000 -3.93e+000 2.0e+000 9.6e-001 1.00e-001
11 6.1e-007 6.0e-017 1.1e-015 -3.93e+000 -3.93e+000 1.9e+000 9.5e-001 1.00e-001
12 6.4e-008 6.2e-017 2.8e-015 -3.93e+000 -3.93e+000 1.9e+000 9.5e-001 1.00e-001

phase.value  = pdOPT     
   Iteration = 12
          mu = +6.3683911921685876e-008
relative gap = +4.8612540798365603e-008
        gap  = +1.9105354454040935e-007
     digits  = +7.3132516793600892e+000
objValPrimal = -3.9301286614303779e+000
objValDual   = -3.9301288524839224e+000
p.feas.error = +5.9952043329758453e-015
d.feas.error = +9.7699626167013776e-012
total time   = 0.014943
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
 Predictor time  =       0.004697,  33.689571
 Corrector time  =       0.008250,  59.173720
 Make bMat time  =       0.000000,  0.000000
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.002228,  15.980491
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.004513,  32.369818
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000000,  0.000000
 solve           =       0.000000,  0.000000
 sumDz           =       0.005068,  36.350595
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.001138,  8.162387
 makedXdZ        =       0.006206,  44.512982
 xMatTime        =       0.000000,  0.000000
 zMatTime        =       0.000000,  0.000000
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000000,  0.000000
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000995,  7.136709
 EigTime         =       0.000000,  0.000000
 sub_total_bMat  =       0.013942,  100.000000
 Main Loop       =       0.013942,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.001001,  7.179745
 Total           =       0.014943,  107.179745

xVec = 
{-4.936e-002,-1.377e-001}
xMat = 
{
{ {+1.570e+000,-4.088e-001,-8.295e-001 },
  {-4.088e-001,+3.211e+000,-2.181e+000 },
  {-8.295e-001,-2.181e+000,+2.289e+000 }   }
}
yMat = 
{
{ {+2.503e-001,+2.648e-001,+3.430e-001 },
  {+2.648e-001,+2.802e-001,+3.630e-001 },
  {+3.430e-001,+3.630e-001,+4.702e-001 }   }
}
    main loop time = 0.013942
        total time = 0.014943
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.001001
SDPA end at [Thu Jul 15 21:27:24 2021]
ALL TIME = 0.015792
