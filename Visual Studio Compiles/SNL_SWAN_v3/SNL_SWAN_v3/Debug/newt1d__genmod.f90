        !COMPILER-GENERATED INTERFACE MODULE: Mon Apr 29 12:10:45 2013
        MODULE NEWT1D__genmod
          INTERFACE 
            SUBROUTINE NEWT1D(XP,YP,XCGRID,YCGRID,KGRPNT,XC,YC,FIND)
              USE SWCOMM3
              REAL(KIND=4) :: XP
              REAL(KIND=4) :: YP
              REAL(KIND=4) :: XCGRID(MXC,MYC)
              REAL(KIND=4) :: YCGRID(MXC,MYC)
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              REAL(KIND=4) :: XC
              REAL(KIND=4) :: YC
              LOGICAL(KIND=4) :: FIND
            END SUBROUTINE NEWT1D
          END INTERFACE 
        END MODULE NEWT1D__genmod
