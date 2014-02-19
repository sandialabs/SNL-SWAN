        !COMPILER-GENERATED INTERFACE MODULE: Thu Dec 20 11:58:02 2012
        MODULE SWTRCF__genmod
          INTERFACE 
            SUBROUTINE SWTRCF(WLEV2,CHS,LINK,OBREDF,AC2,REFLSO,KGRPNT,  &
     &XCGRID,YCGRID,CAX,CAY,RDX,RDY,ANYBIN,SPCSIG,SPCDIR)
              USE SWCOMM3
              REAL(KIND=4) :: WLEV2(MCGRD)
              REAL(KIND=4) :: CHS(MCGRD)
              INTEGER(KIND=4) :: LINK(2)
              REAL(KIND=4) :: OBREDF(MDC,MSC,2)
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: REFLSO(MDC,MSC)
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              REAL(KIND=4) :: XCGRID(MXC,MYC)
              REAL(KIND=4) :: YCGRID(MXC,MYC)
              REAL(KIND=4) :: CAX(MDC,MSC,10)
              REAL(KIND=4) :: CAY(MDC,MSC,10)
              REAL(KIND=4) :: RDX(10)
              REAL(KIND=4) :: RDY(10)
              LOGICAL(KIND=4) :: ANYBIN(MDC,MSC)
              REAL(KIND=4) :: SPCSIG(MSC)
              REAL(KIND=4) :: SPCDIR(MDC,6)
            END SUBROUTINE SWTRCF
          END INTERFACE 
        END MODULE SWTRCF__genmod
