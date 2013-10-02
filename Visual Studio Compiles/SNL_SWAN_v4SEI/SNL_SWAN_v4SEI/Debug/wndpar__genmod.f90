        !COMPILER-GENERATED INTERFACE MODULE: Mon Apr 29 16:05:18 2013
        MODULE WNDPAR__genmod
          INTERFACE 
            SUBROUTINE WNDPAR(ISSTOP,IDWMIN,IDWMAX,IDCMIN,IDCMAX,DEP2,  &
     &WIND10,GENC0,GENC1,THETAW,AC2,KWAVE,IMATRA,IMATDA,SPCSIG,CGO,ALIMW&
     &,GROWW,ETOTW,PLWNDA,PLWNDB,SPCDIR,ITER)
              USE SWCOMM3
              USE SWCOMM4
              INTEGER(KIND=4) :: ISSTOP
              INTEGER(KIND=4) :: IDWMIN
              INTEGER(KIND=4) :: IDWMAX
              INTEGER(KIND=4) :: IDCMIN(MSC)
              INTEGER(KIND=4) :: IDCMAX(MSC)
              REAL(KIND=4) :: DEP2(MCGRD)
              REAL(KIND=4) :: WIND10
              REAL(KIND=4) :: GENC0(MDC,MSC,1)
              REAL(KIND=4) :: GENC1(MDC,MSC,1)
              REAL(KIND=4) :: THETAW
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: KWAVE(MSC,10)
              REAL(KIND=4) :: IMATRA(MDC,MSC)
              REAL(KIND=4) :: IMATDA(MDC,MSC)
              REAL(KIND=4) :: SPCSIG(MSC)
              REAL(KIND=4) :: CGO(MSC,10)
              REAL(KIND=4) :: ALIMW(MDC,MSC)
              LOGICAL(KIND=4) :: GROWW(MDC,MSC)
              REAL(KIND=4) :: ETOTW
              REAL(KIND=4) :: PLWNDA(MDC,MSC,NPTST)
              REAL(KIND=4) :: PLWNDB(MDC,MSC,NPTST)
              REAL(KIND=4) :: SPCDIR(MDC,6)
              INTEGER(KIND=4) :: ITER
            END SUBROUTINE WNDPAR
          END INTERFACE 
        END MODULE WNDPAR__genmod
