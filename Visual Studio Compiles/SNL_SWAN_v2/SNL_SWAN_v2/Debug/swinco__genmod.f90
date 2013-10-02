        !COMPILER-GENERATED INTERFACE MODULE: Wed Apr 24 17:03:15 2013
        MODULE SWINCO__genmod
          INTERFACE 
            SUBROUTINE SWINCO(AC2,COMPDA,XCGRID,YCGRID,KGRPNT,SPCDIR,   &
     &SPCSIG,XYTST)
              USE SWCOMM3
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: COMPDA(MCGRD,MCMVAR)
              REAL(KIND=4) :: XCGRID(MXC,MYC)
              REAL(KIND=4) :: YCGRID(MXC,MYC)
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              REAL(KIND=4) :: SPCDIR(MDC,6)
              REAL(KIND=4) :: SPCSIG(MSC)
              INTEGER(KIND=4) :: XYTST(*)
            END SUBROUTINE SWINCO
          END INTERFACE 
        END MODULE SWINCO__genmod
