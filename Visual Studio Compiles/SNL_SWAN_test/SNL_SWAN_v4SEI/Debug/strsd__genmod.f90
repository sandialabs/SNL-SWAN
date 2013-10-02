        !COMPILER-GENERATED INTERFACE MODULE: Mon Sep 16 14:57:42 2013
        MODULE STRSD__genmod
          INTERFACE 
            SUBROUTINE STRSD(DD,IDCMIN,IDCMAX,CAD,IMATLA,IMATDA,IMATUA, &
     &IMATRA,AC2,ISSTOP,ANYBIN,LEAKC1,TRAC0,TRAC1)
              USE SWCOMM3
              REAL(KIND=4) :: DD
              INTEGER(KIND=4) :: IDCMIN(MSC)
              INTEGER(KIND=4) :: IDCMAX(MSC)
              REAL(KIND=4) :: CAD(MDC,MSC,ICMAX)
              REAL(KIND=4) :: IMATLA(MDC,MSC)
              REAL(KIND=4) :: IMATDA(MDC,MSC)
              REAL(KIND=4) :: IMATUA(MDC,MSC)
              REAL(KIND=4) :: IMATRA(MDC,MSC)
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              INTEGER(KIND=4) :: ISSTOP
              LOGICAL(KIND=4) :: ANYBIN(MDC,MSC)
              REAL(KIND=4) :: LEAKC1(MDC,MSC)
              REAL(KIND=4) :: TRAC0(MDC,MSC,3)
              REAL(KIND=4) :: TRAC1(MDC,MSC,3)
            END SUBROUTINE STRSD
          END INTERFACE 
        END MODULE STRSD__genmod
