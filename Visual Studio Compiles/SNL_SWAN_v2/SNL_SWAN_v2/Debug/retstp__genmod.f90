        !COMPILER-GENERATED INTERFACE MODULE: Wed Apr 24 17:03:30 2013
        MODULE RETSTP__genmod
          INTERFACE 
            SUBROUTINE RETSTP(LXYTST,XYTST,KGRPNT,KGRBND,XCGRID,YCGRID, &
     &SPCSIG,SPCDIR)
              USE SWCOMM3
              INTEGER(KIND=4) :: LXYTST
              INTEGER(KIND=4) :: XYTST(LXYTST)
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              INTEGER(KIND=4) :: KGRBND(*)
              REAL(KIND=4) :: XCGRID(MXC,MYC)
              REAL(KIND=4) :: YCGRID(MXC,MYC)
              REAL(KIND=4) :: SPCSIG(MSC)
              REAL(KIND=4) :: SPCDIR(MDC,6)
            END SUBROUTINE RETSTP
          END INTERFACE 
        END MODULE RETSTP__genmod