        !COMPILER-GENERATED INTERFACE MODULE: Mon Sep 16 14:49:32 2013
        MODULE SWOBSTO__genmod
          INTERFACE 
            SUBROUTINE SWOBSTO(XCGRID,YCGRID,XP,YP,XC,YC,KGRPNT,CROSS,  &
     &MIP)
              USE SWCOMM3
              INTEGER(KIND=4) :: MIP
              REAL(KIND=4) :: XCGRID(MXC,MYC)
              REAL(KIND=4) :: YCGRID(MXC,MYC)
              REAL(KIND=4) :: XP(MIP)
              REAL(KIND=4) :: YP(MIP)
              REAL(KIND=4) :: XC(MIP)
              REAL(KIND=4) :: YC(MIP)
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              LOGICAL(KIND=4) :: CROSS(4,MIP)
            END SUBROUTINE SWOBSTO
          END INTERFACE 
        END MODULE SWOBSTO__genmod
