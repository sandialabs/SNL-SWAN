        !COMPILER-GENERATED INTERFACE MODULE: Thu Dec 20 11:58:02 2012
        MODULE CVMESH__genmod
          INTERFACE 
            SUBROUTINE CVMESH(XP,YP,XC,YC,KGRPNT,XCGRID,YCGRID,KGRBND)
              USE SWCOMM3
              REAL(KIND=4) :: XP
              REAL(KIND=4) :: YP
              REAL(KIND=4) :: XC
              REAL(KIND=4) :: YC
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              REAL(KIND=4) :: XCGRID(MXC,MYC)
              REAL(KIND=4) :: YCGRID(MXC,MYC)
              INTEGER(KIND=4) :: KGRBND(*)
            END SUBROUTINE CVMESH
          END INTERFACE 
        END MODULE CVMESH__genmod