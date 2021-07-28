SDPA start at [Thu Jul 15 21:27:24 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset0\Iden0.dat-s  : sparse
"These tests have C equals identity"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset0\Iden0.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -8.00e+002 7.2e-001 1.0e+000 2.00e-001
 1 3.6e+003 2.8e-001 2.4e-016 +8.40e+001 -9.85e+002 9.1e-001 9.1e-001 2.00e-001
 2 5.8e+002 2.6e-002 3.6e-016 +7.37e+000 -1.28e+003 1.0e+000 5.5e+000 2.00e-001
 3 4.2e+001 4.5e-018 3.4e-015 +2.18e+000 -3.35e+002 3.7e+001 9.5e-001 1.00e-001
 4 5.5e+000 4.5e-018 1.6e-016 -1.17e+000 -4.55e+001 9.7e-001 9.7e-001 1.00e-001
 5 7.3e-001 4.5e-018 1.8e-017 -1.14e+000 -6.95e+000 1.0e+000 9.2e-001 1.00e-001
 6 1.2e-001 3.4e-018 1.9e-018 -1.59e+000 -2.52e+000 1.1e+000 8.5e-001 1.00e-001
 7 2.5e-002 4.5e-018 3.7e-018 -1.69e+000 -1.89e+000 1.0e+000 8.5e-001 1.00e-001
 8 5.5e-003 4.5e-018 3.0e-017 -1.71e+000 -1.75e+000 1.0e+000 9.4e-001 1.00e-001
 9 7.9e-004 4.5e-018 3.2e-017 -1.71e+000 -1.72e+000 1.2e+000 9.6e-001 1.00e-001
10 9.5e-005 4.5e-018 3.7e-017 -1.71e+000 -1.71e+000 1.3e+000 9.8e-001 1.00e-001
11 1.1e-005 4.5e-018 3.1e-017 -1.71e+000 -1.71e+000 1.3e+000 9.8e-001 1.00e-001
12 1.1e-006 4.5e-018 2.4e-016 -1.71e+000 -1.71e+000 1.3e+000 9.9e-001 1.00e-001
13 1.2e-007 4.5e-018 4.2e-016 -1.71e+000 -1.71e+000 9.0e-001 9.0e-001 1.00e-001

phase.value  = pdFEAS    
   Iteration = 13
          mu = +1.1596461482743514e-007
relative gap = +5.4189611909912091e-007
        gap  = +9.2771696391658054e-007
     digits  = +6.2660839592660222e+000
objValPrimal = -1.7119825735156744e+000
objValDual   = -1.7119835012326383e+000
p.feas.error = +4.4408920985006262e-016
d.feas.error = +3.2116531656356528e-012
total time   = 0.055477
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
 Predictor time  =       0.008052,  14.777566
 Corrector time  =       0.002991,  5.489282
 Make bMat time  =       0.003990,  7.322713
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.000000,  0.000000
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.000000,  0.000000
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.004989,  9.156144
 solve           =       0.000000,  0.000000
 sumDz           =       0.000998,  1.831596
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.006055,  11.112539
 makedXdZ        =       0.007053,  12.944134
 xMatTime        =       0.000996,  1.827925
 zMatTime        =       0.000000,  0.000000
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.001993,  3.657686
 EigzMatTime     =       0.002996,  5.498458
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000998,  1.831596
 EigTime         =       0.004989,  9.156144
 sub_total_bMat  =       0.050498,  92.677287
 Main Loop       =       0.054488,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000989,  1.815079
 Total           =       0.055477,  101.815079

xVec = 
{+1.339e-002,-8.790e-003,+5.776e-003,+7.906e-003,-4.858e-003}
xMat = 
{
{ {+6.660e-001,-2.865e-001,-1.245e-001,+2.414e-001,-1.841e-001,-1.704e-001,+6.949e-002,-3.455e-001 },
  {-2.865e-001,+6.715e-001,-2.083e-001,-1.046e-001,-2.629e-001,+3.477e-002,-3.134e-001,+3.087e-001 },
  {-1.245e-001,-2.083e-001,+7.307e-001,-1.107e-001,+1.912e-002,-2.199e-001,+1.338e-001,-2.020e-001 },
  {+2.414e-001,-1.046e-001,-1.107e-001,+7.561e-001,-9.835e-002,+2.795e-001,-6.384e-001,+3.015e-002 },
  {-1.841e-001,-2.629e-001,+1.912e-002,-9.835e-002,+7.023e-001,+1.747e-001,+8.000e-002,+4.118e-002 },
  {-1.704e-001,+3.477e-002,-2.199e-001,+2.795e-001,+1.747e-001,+7.726e-001,-2.381e-001,-2.035e-001 },
  {+6.949e-002,-3.134e-001,+1.338e-001,-6.384e-001,+8.000e-002,-2.381e-001,+1.101e+000,-1.569e-001 },
  {-3.455e-001,+3.087e-001,-2.020e-001,+3.015e-002,+4.118e-002,-2.035e-001,-1.569e-001,+8.875e-001 }   }
}
yMat = 
{
{ {+3.093e-001,-1.657e-001,+1.446e-001,-4.171e-001,-1.064e-001,+2.927e-001,-2.183e-001,+2.586e-001 },
  {-1.657e-001,+8.881e-002,-7.746e-002,+2.235e-001,+5.701e-002,-1.568e-001,+1.169e-001,-1.386e-001 },
  {+1.446e-001,-7.746e-002,+6.756e-002,-1.950e-001,-4.972e-002,+1.368e-001,-1.020e-001,+1.209e-001 },
  {-4.171e-001,+2.235e-001,-1.950e-001,+5.625e-001,+1.435e-001,-3.947e-001,+2.943e-001,-3.487e-001 },
  {-1.064e-001,+5.701e-002,-4.972e-002,+1.435e-001,+3.660e-002,-1.007e-001,+7.507e-002,-8.895e-002 },
  {+2.927e-001,-1.568e-001,+1.368e-001,-3.947e-001,-1.007e-001,+2.769e-001,-2.065e-001,+2.447e-001 },
  {-2.183e-001,+1.169e-001,-1.020e-001,+2.943e-001,+7.507e-002,-2.065e-001,+1.540e-001,-1.825e-001 },
  {+2.586e-001,-1.386e-001,+1.209e-001,-3.487e-001,-8.895e-002,+2.447e-001,-1.825e-001,+2.162e-001 }   }
}
    main loop time = 0.054488
        total time = 0.055477
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000989
SDPA end at [Thu Jul 15 21:27:24 2021]
ALL TIME = 0.133525