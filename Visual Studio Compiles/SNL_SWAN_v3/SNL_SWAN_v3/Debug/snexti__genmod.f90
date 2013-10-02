        !COMPILER-GENERATED INTERFACE MODULE: Mon Apr 29 12:10:47 2013
        MODULE SNEXTI__genmod
          INTERFACE 
            SUBROUTINE SNEXTI(BSPECS,BGRIDP,COMPDA,AC1,AC2,SPCSIG,SPCDIR&
     &,XCGRID,YCGRID,KGRPNT,XYTST,DEPTH,WLEVL,FRIC,UXB,UYB,WXI,WYI)
              USE SWCOMM2
              USE SWCOMM3
              REAL(KIND=4) :: BSPECS(MDC,MSC,NBSPEC,2)
              INTEGER(KIND=4) :: BGRIDP(*)
              REAL(KIND=4) :: COMPDA(MCGRD,MCMVAR)
              REAL(KIND=4) :: AC1(MDC,MSC,MCGRD)
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: SPCSIG(MSC)
              REAL(KIND=4) :: SPCDIR(MDC,6)
              REAL(KIND=4) :: XCGRID(MXC,MYC)
              REAL(KIND=4) :: YCGRID(MXC,MYC)
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              INTEGER(KIND=4) :: XYTST(*)
              REAL(KIND=4) :: DEPTH(*)
              REAL(KIND=4) :: WLEVL(*)
              REAL(KIND=4) :: FRIC(*)
              REAL(KIND=4) :: UXB(*)
              REAL(KIND=4) :: UYB(*)
              REAL(KIND=4) :: WXI(*)
              REAL(KIND=4) :: WYI(*)
            END SUBROUTINE SNEXTI
          END INTERFACE 
        END MODULE SNEXTI__genmod
