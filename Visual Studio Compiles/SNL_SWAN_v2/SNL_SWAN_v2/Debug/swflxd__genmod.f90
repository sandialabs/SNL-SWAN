        !COMPILER-GENERATED INTERFACE MODULE: Wed Apr 24 17:03:41 2013
        MODULE SWFLXD__genmod
          INTERFACE 
            SUBROUTINE SWFLXD(CAD,IMATLA,IMATDA,IMATUA,IMATRA,AC2,DD,   &
     &ANYBIN,LEAKC1,IDCMIN,IDCMAX,ISSTOP)
              USE SWCOMM3
              REAL(KIND=4) :: CAD(MDC,MSC,ICMAX)
              REAL(KIND=4) :: IMATLA(MDC,MSC)
              REAL(KIND=4) :: IMATDA(MDC,MSC)
              REAL(KIND=4) :: IMATUA(MDC,MSC)
              REAL(KIND=4) :: IMATRA(MDC,MSC)
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: DD
              LOGICAL(KIND=4) :: ANYBIN(MDC,MSC)
              REAL(KIND=4) :: LEAKC1(MDC,MSC)
              INTEGER(KIND=4) :: IDCMIN(MSC)
              INTEGER(KIND=4) :: IDCMAX(MSC)
              INTEGER(KIND=4) :: ISSTOP
            END SUBROUTINE SWFLXD
          END INTERFACE 
        END MODULE SWFLXD__genmod
