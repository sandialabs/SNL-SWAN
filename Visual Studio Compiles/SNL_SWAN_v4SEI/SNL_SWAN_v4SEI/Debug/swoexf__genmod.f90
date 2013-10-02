        !COMPILER-GENERATED INTERFACE MODULE: Mon Apr 29 16:05:11 2013
        MODULE SWOEXF__genmod
          INTERFACE 
            SUBROUTINE SWOEXF(MIP,XC,YC,VOQR,VOQ,AC2,DEP2,SPCSIG,WK,CG, &
     &SPCDIR,NE,NED,KGRPNT,XCGRID,YCGRID,IONOD)
              USE SWCOMM3
              INTEGER(KIND=4) :: MIP
              REAL(KIND=4) :: XC(MIP)
              REAL(KIND=4) :: YC(MIP)
              INTEGER(KIND=4) :: VOQR(*)
              REAL(KIND=4) :: VOQ(MIP,*)
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: DEP2(MCGRD)
              REAL(KIND=4) :: SPCSIG(MSC)
              REAL(KIND=4) :: WK(*)
              REAL(KIND=4) :: CG(*)
              REAL(KIND=4) :: SPCDIR(MDC,6)
              REAL(KIND=4) :: NE(*)
              REAL(KIND=4) :: NED(*)
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              REAL(KIND=4) :: XCGRID(MXC,MYC)
              REAL(KIND=4) :: YCGRID(MXC,MYC)
              INTEGER(KIND=4) :: IONOD(*)
            END SUBROUTINE SWOEXF
          END INTERFACE 
        END MODULE SWOEXF__genmod
