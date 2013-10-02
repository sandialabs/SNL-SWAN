        !COMPILER-GENERATED INTERFACE MODULE: Mon Sep 16 14:57:35 2013
        MODULE SWLTA__genmod
          INTERFACE 
            SUBROUTINE SWLTA(AC2,DEP2,CGO,SPCSIG,KWAVE,IMATRA,IMATDA,   &
     &REDC0,REDC1,IDDLOW,IDDTOP,ISSTOP,IDCMIN,IDCMAX,HS,SMEBRK,PLTRI,   &
     &URSELL)
              USE SWCOMM3
              USE SWCOMM4
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: DEP2(MCGRD)
              REAL(KIND=4) :: CGO(MSC,10)
              REAL(KIND=4) :: SPCSIG(MSC)
              REAL(KIND=4) :: KWAVE(MSC,10)
              REAL(KIND=4) :: IMATRA(MDC,MSC)
              REAL(KIND=4) :: IMATDA(MDC,MSC)
              REAL(KIND=4) :: REDC0(MDC,MSC,2)
              REAL(KIND=4) :: REDC1(MDC,MSC,2)
              INTEGER(KIND=4) :: IDDLOW
              INTEGER(KIND=4) :: IDDTOP
              INTEGER(KIND=4) :: ISSTOP
              INTEGER(KIND=4) :: IDCMIN(MSC)
              INTEGER(KIND=4) :: IDCMAX(MSC)
              REAL(KIND=4) :: HS
              REAL(KIND=4) :: SMEBRK
              REAL(KIND=4) :: PLTRI(MDC,MSC,NPTST)
              REAL(KIND=4) :: URSELL(MCGRD)
            END SUBROUTINE SWLTA
          END INTERFACE 
        END MODULE SWLTA__genmod
