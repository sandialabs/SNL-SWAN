        !COMPILER-GENERATED INTERFACE MODULE: Mon Sep 16 14:49:44 2013
        MODULE SWBOUN__genmod
          INTERFACE 
            SUBROUTINE SWBOUN(XCGRID,YCGRID,KGRPNT,XYTST,KGRBND)
              USE SWCOMM3
              REAL(KIND=4) :: XCGRID(MXC,MYC)
              REAL(KIND=4) :: YCGRID(MXC,MYC)
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              INTEGER(KIND=4) :: XYTST(*)
              INTEGER(KIND=4) :: KGRBND(*)
            END SUBROUTINE SWBOUN
          END INTERFACE 
        END MODULE SWBOUN__genmod