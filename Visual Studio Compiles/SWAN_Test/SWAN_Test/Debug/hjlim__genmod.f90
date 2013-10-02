        !COMPILER-GENERATED INTERFACE MODULE: Mon Sep 16 14:49:35 2013
        MODULE HJLIM__genmod
          INTERFACE 
            SUBROUTINE HJLIM(AC2,AC2OLD,CGO,KWAVE,SPCSIG,ANYBIN,ISLMIN, &
     &NFLIM,QB_LOC,USTAR)
              USE SWCOMM3
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: AC2OLD(MDC,MSC)
              REAL(KIND=4) :: CGO(MSC,ICMAX)
              REAL(KIND=4) :: KWAVE(MSC,ICMAX)
              REAL(KIND=4) :: SPCSIG(MSC)
              LOGICAL(KIND=4) :: ANYBIN(MDC,MSC)
              INTEGER(KIND=4) :: ISLMIN(MCGRD)
              INTEGER(KIND=4) :: NFLIM(MCGRD)
              REAL(KIND=4) :: QB_LOC
              REAL(KIND=4) :: USTAR(MCGRD)
            END SUBROUTINE HJLIM
          END INTERFACE 
        END MODULE HJLIM__genmod
