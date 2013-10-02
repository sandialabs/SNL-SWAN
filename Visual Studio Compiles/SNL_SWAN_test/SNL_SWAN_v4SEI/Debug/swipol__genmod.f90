        !COMPILER-GENERATED INTERFACE MODULE: Mon Sep 16 14:57:35 2013
        MODULE SWIPOL__genmod
          INTERFACE 
            SUBROUTINE SWIPOL(FINP,EXCVAL,XC,YC,MIP,CROSS,FOUTP,KGRPNT, &
     &DEP2)
              USE SWCOMM3
              INTEGER(KIND=4) :: MIP
              REAL(KIND=4) :: FINP(MCGRD)
              REAL(KIND=4) :: EXCVAL
              REAL(KIND=4) :: XC(MIP)
              REAL(KIND=4) :: YC(MIP)
              LOGICAL(KIND=4) :: CROSS(4,MIP)
              REAL(KIND=4) :: FOUTP(MIP)
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              REAL(KIND=4) :: DEP2(MCGRD)
            END SUBROUTINE SWIPOL
          END INTERFACE 
        END MODULE SWIPOL__genmod
