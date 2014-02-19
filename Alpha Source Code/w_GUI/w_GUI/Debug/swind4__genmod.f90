        !COMPILER-GENERATED INTERFACE MODULE: Thu Dec 20 11:57:56 2012
        MODULE SWIND4__genmod
          INTERFACE 
            SUBROUTINE SWIND4(IDWMIN,IDWMAX,SPCSIG,WIND10,THETAW,XIS,DD,&
     &KWAVE,IMATRA,GENC0,IDCMIN,IDCMAX,AC2,UFRIC,PLWNDA,ISSTOP,ITER,    &
     &USTAR,ZELEN,SPCDIR,ANYWND,IT)
              USE SWCOMM3
              USE SWCOMM4
              INTEGER(KIND=4) :: IDWMIN
              INTEGER(KIND=4) :: IDWMAX
              REAL(KIND=4) :: SPCSIG(MSC)
              REAL(KIND=4) :: WIND10
              REAL(KIND=4) :: THETAW
              REAL(KIND=4) :: XIS
              REAL(KIND=4) :: DD
              REAL(KIND=4) :: KWAVE(MSC,ICMAX)
              REAL(KIND=4) :: IMATRA(MDC,MSC)
              REAL(KIND=4) :: GENC0(MDC,MSC,1)
              INTEGER(KIND=4) :: IDCMIN(MSC)
              INTEGER(KIND=4) :: IDCMAX(MSC)
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: UFRIC
              REAL(KIND=4) :: PLWNDA(MDC,MSC,NPTST)
              INTEGER(KIND=4) :: ISSTOP
              INTEGER(KIND=4) :: ITER
              REAL(KIND=4) :: USTAR(MCGRD)
              REAL(KIND=4) :: ZELEN(MCGRD)
              REAL(KIND=4) :: SPCDIR(MDC,6)
              LOGICAL(KIND=4) :: ANYWND(MDC)
              INTEGER(KIND=4) :: IT
            END SUBROUTINE SWIND4
          END INTERFACE 
        END MODULE SWIND4__genmod
