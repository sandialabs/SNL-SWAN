        !COMPILER-GENERATED INTERFACE MODULE: Wed Apr 24 17:03:40 2013
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
