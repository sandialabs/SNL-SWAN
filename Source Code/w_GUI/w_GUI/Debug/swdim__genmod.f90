        !COMPILER-GENERATED INTERFACE MODULE: Thu Dec 20 11:57:57 2012
        MODULE SWDIM__genmod
          INTERFACE 
            SUBROUTINE SWDIM(KGRPNT,DEPTH,XCGRID,YCGRID)
              USE SWCOMM3
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              REAL(KIND=4) :: DEPTH(*)
              REAL(KIND=4) :: XCGRID(MXC,MYC)
              REAL(KIND=4) :: YCGRID(MXC,MYC)
            END SUBROUTINE SWDIM
          END INTERFACE 
        END MODULE SWDIM__genmod