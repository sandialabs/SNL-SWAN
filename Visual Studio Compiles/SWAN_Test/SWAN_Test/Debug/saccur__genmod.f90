        !COMPILER-GENERATED INTERFACE MODULE: Mon Sep 16 14:49:34 2013
        MODULE SACCUR__genmod
          INTERFACE 
            SUBROUTINE SACCUR(DEP2,KGRPNT,XYTST,AC2,SPCSIG,ACCUR,HSACC1,&
     &HSACC2,SACC1,SACC2,DELHS,DELTM,I1MYC,I2MYC)
              USE SWCOMM4
              USE SWCOMM3
              REAL(KIND=4) :: DEP2(MCGRD)
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              INTEGER(KIND=4) :: XYTST(2*NPTST)
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: SPCSIG(MSC)
              REAL(KIND=4) :: ACCUR
              REAL(KIND=4) :: HSACC1(MCGRD)
              REAL(KIND=4) :: HSACC2(MCGRD)
              REAL(KIND=4) :: SACC1(MCGRD)
              REAL(KIND=4) :: SACC2(MCGRD)
              REAL(KIND=4) :: DELHS(MCGRD)
              REAL(KIND=4) :: DELTM(MCGRD)
              INTEGER(KIND=4) :: I1MYC
              INTEGER(KIND=4) :: I2MYC
            END SUBROUTINE SACCUR
          END INTERFACE 
        END MODULE SACCUR__genmod
