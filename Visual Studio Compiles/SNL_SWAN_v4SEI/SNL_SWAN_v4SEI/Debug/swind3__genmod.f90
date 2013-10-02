        !COMPILER-GENERATED INTERFACE MODULE: Mon Apr 29 16:05:18 2013
        MODULE SWIND3__genmod
          INTERFACE 
            SUBROUTINE SWIND3(SPCSIG,THETAW,KWAVE,IMATRA,GENC0,IDCMIN,  &
     &IDCMAX,AC2,UFRIC,FPM,PLWNDA,ISSTOP,SPCDIR,ANYWND)
              USE SWCOMM3
              USE SWCOMM4
              REAL(KIND=4) :: SPCSIG(MSC)
              REAL(KIND=4) :: THETAW
              REAL(KIND=4) :: KWAVE(MSC,ICMAX)
              REAL(KIND=4) :: IMATRA(MDC,MSC)
              REAL(KIND=4) :: GENC0(MDC,MSC,1)
              INTEGER(KIND=4) :: IDCMIN(MSC)
              INTEGER(KIND=4) :: IDCMAX(MSC)
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: UFRIC
              REAL(KIND=4) :: FPM
              REAL(KIND=4) :: PLWNDA(MDC,MSC,NPTST)
              INTEGER(KIND=4) :: ISSTOP
              REAL(KIND=4) :: SPCDIR(MDC,6)
              LOGICAL(KIND=4) :: ANYWND(MDC)
            END SUBROUTINE SWIND3
          END INTERFACE 
        END MODULE SWIND3__genmod
