        !COMPILER-GENERATED INTERFACE MODULE: Mon Sep 16 14:57:41 2013
        MODULE STRSXY__genmod
          INTERFACE 
            SUBROUTINE STRSXY(ISSTOP,IDCMIN,IDCMAX,CAX,CAY,AC2,AC1,     &
     &IMATRA,IMATDA,RDX,RDY,OBREDF,TRAC0,TRAC1)
              USE SWCOMM3
              INTEGER(KIND=4) :: ISSTOP
              INTEGER(KIND=4) :: IDCMIN(MSC)
              INTEGER(KIND=4) :: IDCMAX(MSC)
              REAL(KIND=4) :: CAX(MDC,MSC,10)
              REAL(KIND=4) :: CAY(MDC,MSC,10)
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: AC1(MDC,MSC,MCGRD)
              REAL(KIND=4) :: IMATRA(MDC,MSC)
              REAL(KIND=4) :: IMATDA(MDC,MSC)
              REAL(KIND=4) :: RDX(10)
              REAL(KIND=4) :: RDY(10)
              REAL(KIND=4) :: OBREDF(MDC,MSC,2)
              REAL(KIND=4) :: TRAC0(MDC,MSC,3)
              REAL(KIND=4) :: TRAC1(MDC,MSC,3)
            END SUBROUTINE STRSXY
          END INTERFACE 
        END MODULE STRSXY__genmod
