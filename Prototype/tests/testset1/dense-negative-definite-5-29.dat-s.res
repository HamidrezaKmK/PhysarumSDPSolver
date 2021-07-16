SDPA start at [Thu Jul 15 21:27:24 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-29.dat-s  : sparse
"Dense tests with 5 * 5 matrices and 1-3 constraints"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-29.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -1.70e+003 9.1e-001 1.0e+000 2.00e-001
 1 1.6e+003 9.1e-002 0.0e+000 +3.42e-002 -2.23e+003 1.0e+000 2.3e+000 2.00e-001
 2 2.4e+002 9.1e-018 1.5e-015 +8.56e-002 -1.20e+003 9.7e-001 9.7e-001 1.00e-001
 3 3.0e+001 9.1e-018 2.4e-017 +8.73e-002 -1.52e+002 9.0e+001 9.9e-001 1.00e-001
 4 3.3e+000 9.1e-018 9.0e-017 -1.52e-001 -1.64e+001 1.8e+001 9.7e-001 1.00e-001
 5 3.5e-001 9.1e-018 3.0e-018 -4.33e-001 -2.20e+000 9.0e+001 9.7e-001 1.00e-001
 6 3.8e-002 9.1e-018 1.5e-018 -4.60e-001 -6.51e-001 9.6e-001 9.6e-001 1.00e-001
 7 5.3e-003 9.1e-018 0.0e+000 -4.60e-001 -4.86e-001 1.0e+000 9.8e-001 1.00e-001
 8 6.1e-004 9.1e-018 1.5e-018 -4.64e-001 -4.67e-001 1.1e+000 9.9e-001 1.00e-001
 9 6.4e-005 1.8e-017 4.5e-018 -4.64e-001 -4.64e-001 1.1e+000 9.9e-001 1.00e-001
10 6.4e-006 9.1e-018 1.5e-018 -4.64e-001 -4.64e-001 1.1e+000 9.9e-001 1.00e-001
11 6.4e-007 9.1e-018 1.5e-018 -4.64e-001 -4.64e-001 1.1e+000 9.9e-001 1.00e-001
12 6.4e-008 1.8e-017 3.0e-018 -4.64e-001 -4.64e-001 9.0e-001 9.0e-001 1.00e-001

phase.value  = pdFEAS    
   Iteration = 12
          mu = +6.4245289310704834e-008
relative gap = +3.2122644638699072e-007
        gap  = +3.2122644638699072e-007
     digits  = +6.1596432878411491e+000
objValPrimal = -4.6393210842055410e-001
objValDual   = -4.6393242964700049e-001
p.feas.error = +1.7763568394002505e-015
d.feas.error = +1.7763568394002505e-015
total time   = 0.009709
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
 Predictor time  =       0.005037,  51.879699
 Corrector time  =       0.002677,  27.572356
 Make bMat time  =       0.003043,  31.342054
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.001994,  20.537645
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.000000,  0.000000
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000997,  10.268823
 solve           =       0.000000,  0.000000
 sumDz           =       0.000683,  7.034710
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.001994,  20.537645
 makedXdZ        =       0.002677,  27.572356
 xMatTime        =       0.000000,  0.000000
 zMatTime        =       0.000998,  10.279122
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000997,  10.268823
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000000,  0.000000
 EigTime         =       0.000997,  10.268823
 sub_total_bMat  =       0.006666,  68.657946
 Main Loop       =       0.009709,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000000,  0.000000
 Total           =       0.009709,  100.000000

xVec = 
{-7.732e-002}
xMat = 
{
{ {+4.837e+000,-2.218e+000,+2.504e+000,+1.291e+000,-8.116e-001 },
  {-2.218e+000,+2.101e+000,-1.843e+000,+5.412e-001,-2.949e-001 },
  {+2.504e+000,-1.843e+000,+2.407e+000,-2.945e-001,-7.857e-001 },
  {+1.291e+000,+5.412e-001,-2.945e-001,+2.871e+000,+1.255e+000 },
  {-8.116e-001,-2.949e-001,-7.857e-001,+1.255e+000,+4.321e+000 }   }
}
yMat = 
{
{ {+4.950e-002,+9.065e-002,+2.287e-002,-5.223e-002,+3.481e-002 },
  {+9.065e-002,+1.660e-001,+4.189e-002,-9.565e-002,+6.375e-002 },
  {+2.287e-002,+4.189e-002,+1.057e-002,-2.413e-002,+1.609e-002 },
  {-5.223e-002,-9.565e-002,-2.413e-002,+5.511e-002,-3.673e-002 },
  {+3.481e-002,+6.375e-002,+1.609e-002,-3.673e-002,+2.448e-002 }   }
}
    main loop time = 0.009709
        total time = 0.009709
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000000
SDPA end at [Thu Jul 15 21:27:24 2021]
ALL TIME = 0.010696
