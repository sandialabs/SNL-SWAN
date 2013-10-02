        !COMPILER-GENERATED INTERFACE MODULE: Mon Sep 16 14:57:26 2013
        MODULE SBOT__genmod
          INTERFACE 
            SUBROUTINE SBOT(ABRBOT,DEP2,ECOS,ESIN,AC2,IMATDA,KWAVE,     &
     &SPCSIG,UBOT,UX2,UY2,IDCMIN,IDCMAX,PLBTFR,ISSTOP,DISSC1,VARFR,     &
     &FRCOEF)
              USE SWCOMM3
              USE SWCOMM4
              REAL(KIND=4) :: ABRBOT
              REAL(KIND=4) :: DEP2(MCGRD)
              REAL(KIND=4) :: ECOS(MDC)
              REAL(KIND=4) :: ESIN(MDC)
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: IMATDA(MDC,MSC)
              REAL(KIND=4) :: KWAVE(MSC,ICMAX)
              REAL(KIND=4) :: SPCSIG(MSC)
              REAL(KIND=4) :: UBOT(MCGRD)
              REAL(KIND=4) :: UX2(MCGRD)
              REAL(KIND=4) :: UY2(MCGRD)
              INTEGER(KIND=4) :: IDCMIN(MSC)
              INTEGER(KIND=4) :: IDCMAX(MSC)
              REAL(KIND=4) :: PLBTFR(MDC,MSC,NPTST)
              INTEGER(KIND=4) :: ISSTOP
              REAL(KIND=4) :: DISSC1(MDC,MSC,1:3)
              LOGICAL(KIND=4) :: VARFR
              REAL(KIND=4) :: FRCOEF(MCGRD)
            END SUBROUTINE SBOT
          END INTERFACE 
        END MODULE SBOT__genmod
