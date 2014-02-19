        !COMPILER-GENERATED INTERFACE MODULE: Thu Dec 20 11:58:02 2012
        MODULE BCWAMN__genmod
          INTERFACE 
            SUBROUTINE BCWAMN(FBCNAM,BCTYPE,BSPFIL,LBGP,XCGRID,YCGRID,  &
     &KGRPNT,XYTST)
              USE SWCOMM3
              USE M_BNDSPEC
              CHARACTER(*) :: FBCNAM
              CHARACTER(*) :: BCTYPE
              TYPE (BSPCDAT) :: BSPFIL
              LOGICAL(KIND=4) :: LBGP
              REAL(KIND=4) :: XCGRID(MXC,MYC)
              REAL(KIND=4) :: YCGRID(MXC,MYC)
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              INTEGER(KIND=4) :: XYTST(*)
            END SUBROUTINE BCWAMN
          END INTERFACE 
        END MODULE BCWAMN__genmod
