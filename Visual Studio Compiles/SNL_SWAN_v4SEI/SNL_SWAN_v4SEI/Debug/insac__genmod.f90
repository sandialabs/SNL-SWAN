        !COMPILER-GENERATED INTERFACE MODULE: Mon Apr 29 16:05:34 2013
        MODULE INSAC__genmod
          INTERFACE 
            SUBROUTINE INSAC(AC2,SPCSIG,DEP2,HSACC2,SACC2,KGRPNT,I1MYC, &
     &I2MYC)
              USE SWCOMM3
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: SPCSIG(MSC)
              REAL(KIND=4) :: DEP2(MCGRD)
              REAL(KIND=4) :: HSACC2(MCGRD)
              REAL(KIND=4) :: SACC2(MCGRD)
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              INTEGER(KIND=4) :: I1MYC
              INTEGER(KIND=4) :: I2MYC
            END SUBROUTINE INSAC
          END INTERFACE 
        END MODULE INSAC__genmod
