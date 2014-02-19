        !COMPILER-GENERATED INTERFACE MODULE: Thu Dec 20 11:58:03 2012
        MODULE SWOUTP__genmod
          INTERFACE 
            SUBROUTINE SWOUTP(AC2,SPCSIG,SPCDIR,COMPDA,XYTST,KGRPNT,    &
     &XCGRID,YCGRID,OURQT)
              USE SWCOMM3
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: SPCSIG(MSC)
              REAL(KIND=4) :: SPCDIR(MDC,6)
              REAL(KIND=4) :: COMPDA(MCGRD,MCMVAR)
              INTEGER(KIND=4) :: XYTST(*)
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              REAL(KIND=4) :: XCGRID(MXC,MYC)
              REAL(KIND=4) :: YCGRID(MXC,MYC)
              REAL(KIND=4) :: OURQT(250)
            END SUBROUTINE SWOUTP
          END INTERFACE 
        END MODULE SWOUTP__genmod
