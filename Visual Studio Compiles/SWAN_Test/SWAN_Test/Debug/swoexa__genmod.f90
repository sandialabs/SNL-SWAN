        !COMPILER-GENERATED INTERFACE MODULE: Mon Sep 16 14:49:39 2013
        MODULE SWOEXA__genmod
          INTERFACE 
            SUBROUTINE SWOEXA(OQPROC,BKC,MIP,XC,YC,VOQR,VOQ,AC2,ACLOC,  &
     &SPCSIG,WK,CG,SPCDIR,NE,NED,KGRPNT,DEPXY,CROSS)
              USE SWCOMM3
              INTEGER(KIND=4) :: MIP
              LOGICAL(KIND=4) :: OQPROC(*)
              INTEGER(KIND=4) :: BKC
              REAL(KIND=4) :: XC(MIP)
              REAL(KIND=4) :: YC(MIP)
              INTEGER(KIND=4) :: VOQR(*)
              REAL(KIND=4) :: VOQ(MIP,*)
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: ACLOC(MDC,MSC)
              REAL(KIND=4) :: SPCSIG(MSC)
              REAL(KIND=4) :: WK(*)
              REAL(KIND=4) :: CG(*)
              REAL(KIND=4) :: SPCDIR(MDC,6)
              REAL(KIND=4) :: NE(*)
              REAL(KIND=4) :: NED(*)
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              REAL(KIND=4) :: DEPXY(MCGRD)
              LOGICAL(KIND=4) :: CROSS(4,MIP)
            END SUBROUTINE SWOEXA
          END INTERFACE 
        END MODULE SWOEXA__genmod
