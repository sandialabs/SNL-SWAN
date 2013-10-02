        !COMPILER-GENERATED INTERFACE MODULE: Mon Apr 29 16:05:33 2013
        MODULE SWCOMP__genmod
          INTERFACE 
            SUBROUTINE SWCOMP(AC1,AC2,COMPDA,SPCDIR,SPCSIG,XYTST,IT,    &
     &KGRPNT,XCGRID,YCGRID,CROSS)
              USE SWCOMM4
              USE SWCOMM3
              REAL(KIND=4) :: AC1(MDC,MSC,MCGRD)
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: COMPDA(MCGRD,MCMVAR)
              REAL(KIND=4) :: SPCDIR(MDC,6)
              REAL(KIND=4) :: SPCSIG(MSC)
              INTEGER(KIND=4) :: XYTST(2*NPTST)
              INTEGER(KIND=4) :: IT
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              REAL(KIND=4) :: XCGRID(MXC,MYC)
              REAL(KIND=4) :: YCGRID(MXC,MYC)
              INTEGER(KIND=4) :: CROSS(2,MCGRD)
            END SUBROUTINE SWCOMP
          END INTERFACE 
        END MODULE SWCOMP__genmod
