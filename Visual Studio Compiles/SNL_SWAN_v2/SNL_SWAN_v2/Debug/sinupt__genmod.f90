        !COMPILER-GENERATED INTERFACE MODULE: Wed Apr 24 17:03:15 2013
        MODULE SINUPT__genmod
          INTERFACE 
            SUBROUTINE SINUPT(PSNAME,XP,YP,XCGRID,YCGRID,KGRPNT,KGRBND)
              USE SWCOMM3
              CHARACTER(*) :: PSNAME
              REAL(KIND=4) :: XP
              REAL(KIND=4) :: YP
              REAL(KIND=4) :: XCGRID(MXC,MYC)
              REAL(KIND=4) :: YCGRID(MXC,MYC)
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              INTEGER(KIND=4) :: KGRBND(*)
            END SUBROUTINE SINUPT
          END INTERFACE 
        END MODULE SINUPT__genmod
