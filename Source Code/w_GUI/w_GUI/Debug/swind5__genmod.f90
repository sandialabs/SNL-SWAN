        !COMPILER-GENERATED INTERFACE MODULE: Thu Dec 20 11:57:56 2012
        MODULE SWIND5__genmod
          INTERFACE 
            SUBROUTINE SWIND5(SPCSIG,THETAW,ISSTOP,UFRIC,KWAVE,IMATRA,  &
     &IDCMIN,IDCMAX,AC2,ANYWND,PLWNDA,SPCDIR,GENC0)
              USE SWCOMM3
              USE SWCOMM4
              REAL(KIND=4) :: SPCSIG(MSC)
              REAL(KIND=4) :: THETAW
              INTEGER(KIND=4) :: ISSTOP
              REAL(KIND=4) :: UFRIC
              REAL(KIND=4) :: KWAVE(MSC,ICMAX)
              REAL(KIND=4) :: IMATRA(MDC,MSC)
              INTEGER(KIND=4) :: IDCMIN(MSC)
              INTEGER(KIND=4) :: IDCMAX(MSC)
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              LOGICAL(KIND=4) :: ANYWND(MDC)
              REAL(KIND=4) :: PLWNDA(MDC,MSC,NPTST)
              REAL(KIND=4) :: SPCDIR(MDC,6)
              REAL(KIND=4) :: GENC0(MDC,MSC,1)
            END SUBROUTINE SWIND5
          END INTERFACE 
        END MODULE SWIND5__genmod
