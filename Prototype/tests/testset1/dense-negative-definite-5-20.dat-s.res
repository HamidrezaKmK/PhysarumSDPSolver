SDPA start at [Thu Jul 15 21:27:24 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-20.dat-s  : sparse
"Dense tests with 5 * 5 matrices and 1-3 constraints"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\testset1\dense-negative-definite-5-20.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -2.20e+003 8.8e-001 1.0e+000 2.00e-001
 1 2.0e+003 1.2e-001 2.0e-016 +5.74e+000 -2.77e+003 9.7e-001 2.2e+000 2.00e-001
 2 3.3e+002 4.0e-003 1.2e-015 +1.47e+000 -1.44e+003 1.0e+000 1.1e+000 2.00e-001
 3 5.5e+001 9.1e-018 7.0e-016 +9.10e-001 -2.76e+002 2.4e+001 9.6e-001 1.00e-001
 4 6.5e+000 9.1e-018 3.7e-017 -3.40e+000 -3.60e+001 9.7e-001 9.7e-001 1.00e-001
 5 8.5e-001 1.4e-017 6.2e-018 -3.36e+000 -7.63e+000 1.0e+000 9.6e-001 1.00e-001
 6 1.1e-001 9.1e-018 1.6e-018 -3.82e+000 -4.37e+000 1.1e+000 9.4e-001 1.00e-001
 7 1.5e-002 1.8e-017 0.0e+000 -3.88e+000 -3.95e+000 1.2e+000 9.8e-001 1.00e-001
 8 1.6e-003 1.4e-017 7.8e-019 -3.88e+000 -3.89e+000 1.2e+000 9.8e-001 1.00e-001
 9 1.7e-004 1.4e-017 1.2e-017 -3.88e+000 -3.88e+000 1.2e+000 9.8e-001 1.00e-001
10 1.7e-005 1.8e-017 9.4e-018 -3.88e+000 -3.88e+000 1.2e+000 9.9e-001 1.00e-001
11 1.7e-006 1.8e-017 1.2e-017 -3.88e+000 -3.88e+000 1.2e+000 9.9e-001 1.00e-001
12 1.7e-007 1.8e-017 6.6e-017 -3.88e+000 -3.88e+000 9.0e-001 9.0e-001 1.00e-001

phase.value  = pdFEAS    
   Iteration = 12
          mu = +1.7446831104273031e-007
relative gap = +2.2465628175625818e-007
        gap  = +8.7234155010662562e-007
     digits  = +6.6484814333187288e+000
objValPrimal = -3.8830049411419165e+000
objValDual   = -3.8830058134834666e+000
p.feas.error = +1.7763568394002505e-015
d.feas.error = +1.4921397450962104e-013
total time   = 0.013965
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
 Predictor time  =       0.005976,  42.792696
 Corrector time  =       0.005001,  35.810956
 Make bMat time  =       0.002980,  21.339062
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.003999,  28.635875
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.000000,  0.000000
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000989,  7.081991
 solve           =       0.000000,  0.000000
 sumDz           =       0.000000,  0.000000
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.003998,  28.628715
 makedXdZ        =       0.003998,  28.628715
 xMatTime        =       0.000000,  0.000000
 zMatTime        =       0.001002,  7.175081
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000989,  7.081991
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000997,  7.139277
 EigTime         =       0.000989,  7.081991
 sub_total_bMat  =       0.010985,  78.660938
 Main Loop       =       0.013965,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000000,  0.000000
 Total           =       0.013965,  100.000000

xVec = 
{+1.518e-001,+3.911e-002}
xMat = 
{
{ {+2.130e+000,-1.168e+000,+5.828e-001,+2.420e+000,+7.540e-001 },
  {-1.168e+000,+5.462e+000,-1.166e+000,+3.250e+000,-4.420e-001 },
  {+5.828e-001,-1.166e+000,+4.293e-001,+7.471e-002,-1.703e-001 },
  {+2.420e+000,+3.250e+000,+7.471e-002,+7.713e+000,+6.147e-001 },
  {+7.540e-001,-4.420e-001,-1.703e-001,+6.147e-001,+2.383e+000 }   }
}
yMat = 
{
{ {+3.706e-002,+6.512e-002,+1.423e-001,-4.215e-002,+2.140e-002 },
  {+6.512e-002,+1.144e-001,+2.501e-001,-7.406e-002,+3.760e-002 },
  {+1.423e-001,+2.501e-001,+5.468e-001,-1.619e-001,+8.218e-002 },
  {-4.215e-002,-7.406e-002,-1.619e-001,+4.793e-002,-2.433e-002 },
  {+2.140e-002,+3.760e-002,+8.218e-002,-2.433e-002,+1.235e-002 }   }
}
    main loop time = 0.013965
        total time = 0.013965
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000000
SDPA end at [Thu Jul 15 21:27:24 2021]
ALL TIME = 0.014935
