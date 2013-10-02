        !COMPILER-GENERATED INTERFACE MODULE: Mon Apr 29 16:05:34 2013
        MODULE PHILIM__genmod
          INTERFACE 
            SUBROUTINE PHILIM(AC2,AC2OLD,CGO,KWAVE,SPCSIG,ANYBIN,ISLMIN,&
     &NFLIM,QB_LOC)
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
            END SUBROUTINE PHILIM
          END INTERFACE 
        END MODULE PHILIM__genmod
