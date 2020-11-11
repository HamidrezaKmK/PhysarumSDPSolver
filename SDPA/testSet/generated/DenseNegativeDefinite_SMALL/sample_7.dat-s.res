SDPA start at [Wed Nov 11 18:14:18 2020]
param  is ./param.sdpa 
data   is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseNegativeDefinite_SMALL\sample_7.dat-s  : sparse
out    is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseNegativeDefinite_SMALL\sample_7.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -2.60e+003 9.5e-001 8.5e-001 2.00e-001
 1 1.8e+003 4.9e-002 1.5e-001 +1.51e+002 -2.10e+003 1.0e+000 1.0e+000 2.00e-001
 2 3.6e+002 0.0e+000 3.5e-017 +1.80e+002 -9.00e+002 2.1e+000 8.7e-001 1.00e-001
 3 4.5e+001 7.7e-017 2.6e-017 +1.16e+001 -1.24e+002 1.2e+000 9.5e-001 1.00e-001
 4 5.3e+000 7.7e-017 4.3e-018 -5.34e+000 -2.13e+001 1.3e+000 9.2e-001 1.00e-001
 5 7.4e-001 7.7e-017 2.2e-018 -7.32e+000 -9.53e+000 1.6e+000 8.7e-001 1.00e-001
 6 1.1e-001 7.7e-017 4.3e-018 -7.67e+000 -7.99e+000 1.6e+000 8.8e-001 1.00e-001
 7 1.5e-002 7.7e-017 3.5e-017 -7.72e+000 -7.76e+000 1.3e+000 9.5e-001 1.00e-001
 8 1.6e-003 7.7e-017 5.3e-017 -7.72e+000 -7.73e+000 1.3e+000 9.6e-001 1.00e-001
 9 1.8e-004 6.7e-017 4.1e-017 -7.73e+000 -7.73e+000 1.3e+000 9.6e-001 1.00e-001
10 1.9e-005 8.7e-017 1.2e-016 -7.73e+000 -7.73e+000 1.3e+000 9.7e-001 1.00e-001
11 2.0e-006 7.7e-017 6.1e-017 -7.73e+000 -7.73e+000 1.3e+000 9.6e-001 1.00e-001
12 2.1e-007 7.7e-017 6.4e-015 -7.73e+000 -7.73e+000 1.3e+000 9.6e-001 1.00e-001

phase.value  = pdOPT     
   Iteration = 12
          mu = +2.0642804354764621e-007
relative gap = +8.0161425837394671e-008
        gap  = +6.1928836991853586e-007
     digits  = +7.0960345665790578e+000
objValPrimal = -7.7255155909180875e+000
objValDual   = -7.7255162102064574e+000
p.feas.error = +7.1054273576010019e-015
d.feas.error = +2.1046275833214168e-011
total time   = 0.007650
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
 Predictor time  =       0.005457,  71.333333
 Corrector time  =       0.000708,  9.254902
 Make bMat time  =       0.003972,  51.921569
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.000000,  0.000000
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.001203,  15.725490
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000000,  0.000000
 solve           =       0.000000,  0.000000
 sumDz           =       0.000000,  0.000000
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.000990,  12.941176
 makedXdZ        =       0.000990,  12.941176
 xMatTime        =       0.000000,  0.000000
 zMatTime        =       0.000000,  0.000000
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000000,  0.000000
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000988,  12.915033
 EigTime         =       0.000000,  0.000000
 sub_total_bMat  =       0.003678,  48.078431
 Main Loop       =       0.007650,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000000,  0.000000
 Total           =       0.007650,  100.000000

xVec = 
{-4.864e-002,-2.002e-001}
xMat = 
{
{ {+7.082e+000,-5.590e+000,-1.735e+000 },
  {-5.590e+000,+4.817e+000,-1.824e-001 },
  {-1.735e+000,-1.824e-001,+6.375e+000 }   }
}
yMat = 
{
{ {+4.967e-001,+5.822e-001,+1.518e-001 },
  {+5.822e-001,+6.823e-001,+1.779e-001 },
  {+1.518e-001,+1.779e-001,+4.641e-002 }   }
}
    main loop time = 0.007650
        total time = 0.007650
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000000
SDPA end at [Wed Nov 11 18:14:18 2020]
ALL TIME = 0.009139
