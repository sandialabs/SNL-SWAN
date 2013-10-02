        !COMPILER-GENERATED INTERFACE MODULE: Wed Apr 24 17:03:30 2013
        MODULE BCFILE__genmod
          INTERFACE 
            SUBROUTINE BCFILE(FBCNAM,BCTYPE,BSPFIL,LBGP,XCGRID,YCGRID,  &
     &KGRPNT,XYTST,KGRBND,DONALL)
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
              INTEGER(KIND=4) :: KGRBND(*)
              LOGICAL(KIND=4), INTENT(INOUT) :: DONALL
            END SUBROUTINE BCFILE
          END INTERFACE 
        END MODULE BCFILE__genmod
