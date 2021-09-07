SDPA start at [Thu Jul 15 21:27:31 2021]
param  is ./param.sdpa 
data   is G:\Research\PhysarumSDPSolver\SDPA\testSet\vertex-conver1\vertex-cover519.dat-s  : sparse
"Vertex cover tests for graphs with 5 vertices and 1 - 10 edges"
out    is G:\Research\PhysarumSDPSolver\SDPA\testSet\vertex-conver1\vertex-cover519.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -6.00e+002 1.0e+000 8.6e-001 2.00e-001
 1 1.9e+003 0.0e+000 1.4e-001 +4.31e+002 -9.96e+001 8.6e-001 8.6e-001 2.00e-001
 2 4.3e+002 1.4e-016 2.0e-002 +5.31e+002 -1.65e+001 2.0e+000 8.3e-001 2.00e-001
 3 1.1e+002 2.9e-016 3.4e-003 +2.71e+002 -6.08e+000 1.3e+000 8.3e-001 2.00e-001
 4 2.7e+001 2.9e-016 5.8e-004 +9.84e+001 -4.85e+000 1.1e+000 1.0e+000 2.00e-001
 5 5.0e+000 4.3e-016 6.7e-017 +2.52e+001 -4.81e+000 9.4e-001 2.0e+001 1.00e-001
 6 7.0e-001 4.7e-016 8.2e-015 -1.27e-001 -4.30e+000 9.3e-001 3.7e+000 1.00e-001
 7 9.5e-002 4.6e-016 2.2e-014 -3.58e+000 -4.14e+000 9.4e-001 1.0e+000 1.00e-001
 8 1.3e-002 4.6e-016 6.3e-016 -3.96e+000 -4.03e+000 9.6e-001 1.0e+000 1.00e-001
 9 1.5e-003 4.7e-016 1.0e-016 -4.00e+000 -4.00e+000 9.6e-001 1.0e+000 1.00e-001
10 1.6e-004 4.6e-016 5.8e-017 -4.00e+000 -4.00e+000 9.7e-001 1.0e+000 1.00e-001
11 1.6e-005 4.7e-016 3.9e-016 -4.00e+000 -4.00e+000 9.7e-001 1.0e+000 1.00e-001
12 1.6e-006 4.7e-016 1.8e-015 -4.00e+000 -4.00e+000 9.7e-001 1.0e+000 1.00e-001
13 1.6e-007 4.6e-016 1.8e-014 -4.00e+000 -4.00e+000 9.0e-001 9.0e-001 1.00e-001

phase.value  = pdFEAS    
   Iteration = 13
          mu = +1.6398082965570401e-007
relative gap = +2.4597042235456452e-007
        gap  = +9.8388169700314165e-007
     digits  = +6.6091171131425224e+000
objValPrimal = -3.9999995388957190e+000
objValDual   = -4.0000005227774160e+000
p.feas.error = +4.5741188614556449e-014
d.feas.error = +3.5205172110863714e-012
total time   = 0.016055
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
 Predictor time  =       0.003990,  24.852071
 Corrector time  =       0.005506,  34.294612
 Make bMat time  =       0.001995,  12.426036
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.001993,  12.413578
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.000000,  0.000000
 Cholesky bMat   =       0.000998,  6.216132
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.002993,  18.642168
 solve           =       0.000000,  0.000000
 sumDz           =       0.000999,  6.222361
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.003511,  21.868577
 makedXdZ        =       0.004510,  28.090937
 xMatTime        =       0.000000,  0.000000
 zMatTime        =       0.000997,  6.209903
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000998,  6.216132
 EigzMatTime     =       0.001995,  12.426036
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000998,  6.216132
 EigTime         =       0.002993,  18.642168
 sub_total_bMat  =       0.014060,  87.573964
 Main Loop       =       0.016055,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000000,  0.000000
 Total           =       0.016055,  100.000000

xVec = 
{+8.063e+000,+3.156e-007,+3.156e-007,+1.016e+000,+3.156e-007,+3.156e-007,-1.008e+000,-5.000e-001,-5.000e-001,-1.008e+000,-5.000e-001,-5.000e-001,-1.008e+000,-1.008e+000}
xMat = 
{
{ {+9.063e+000,-2.008e+000,-2.008e+000,-5.047e+000,-2.008e+000,-2.008e+000 },
  {-2.008e+000,+1.000e+000,+0.000e+000,+1.008e+000,+5.000e-001,+5.000e-001 },
  {-2.008e+000,+0.000e+000,+1.000e+000,+1.008e+000,+5.000e-001,+5.000e-001 },
  {-5.047e+000,+1.008e+000,+1.008e+000,+3.032e+000,+1.008e+000,+1.008e+000 },
  {-2.008e+000,+5.000e-001,+5.000e-001,+1.008e+000,+1.000e+000,+0.000e+000 },
  {-2.008e+000,+5.000e-001,+5.000e-001,+1.008e+000,+0.000e+000,+1.000e+000 }   }
}
yMat = 
{
{ {+1.000e+000,+5.000e-001,+5.000e-001,+1.000e+000,+5.000e-001,+5.000e-001 },
  {+5.000e-001,+5.000e-001,+5.000e-001,+5.000e-001,+3.267e-007,+3.267e-007 },
  {+5.000e-001,+5.000e-001,+5.000e-001,+5.000e-001,+3.267e-007,+3.267e-007 },
  {+1.000e+000,+5.000e-001,+5.000e-001,+1.000e+000,+5.000e-001,+5.000e-001 },
  {+5.000e-001,+3.267e-007,+3.267e-007,+5.000e-001,+5.000e-001,+5.000e-001 },
  {+5.000e-001,+3.267e-007,+3.267e-007,+5.000e-001,+5.000e-001,+5.000e-001 }   }
}
    main loop time = 0.016055
        total time = 0.016055
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000000
SDPA end at [Thu Jul 15 21:27:31 2021]
ALL TIME = 0.017512
