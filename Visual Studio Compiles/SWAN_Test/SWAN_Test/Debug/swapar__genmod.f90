        !COMPILER-GENERATED INTERFACE MODULE: Mon Sep 16 14:49:37 2013
        MODULE SWAPAR__genmod
          INTERFACE 
            SUBROUTINE SWAPAR(DEP2,KWAVE,CGO,SPCSIG)
              USE SWCOMM3
              REAL(KIND=4) :: DEP2(MCGRD)
              REAL(KIND=4) :: KWAVE(MSC,ICMAX)
              REAL(KIND=4) :: CGO(MSC,ICMAX)
              REAL(KIND=4) :: SPCSIG(MSC)
            END SUBROUTINE SWAPAR
          END INTERFACE 
        END MODULE SWAPAR__genmod
