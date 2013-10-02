        !COMPILER-GENERATED INTERFACE MODULE: Mon Apr 29 12:11:10 2013
        MODULE SWSTPC__genmod
          INTERFACE 
            SUBROUTINE SWSTPC(HSACC0,HSACC1,HSACC2,SACC0,SACC1,SACC2,   &
     &HSDIFC,TMDIFC,DELHS,DELTM,DEP2,ACCUR,I1MYC,I2MYC)
              USE SWCOMM3
              REAL(KIND=4) :: HSACC0(MCGRD)
              REAL(KIND=4) :: HSACC1(MCGRD)
              REAL(KIND=4) :: HSACC2(MCGRD)
              REAL(KIND=4) :: SACC0(MCGRD)
              REAL(KIND=4) :: SACC1(MCGRD)
              REAL(KIND=4) :: SACC2(MCGRD)
              REAL(KIND=4) :: HSDIFC(MCGRD)
              REAL(KIND=4) :: TMDIFC(MCGRD)
              REAL(KIND=4) :: DELHS(MCGRD)
              REAL(KIND=4) :: DELTM(MCGRD)
              REAL(KIND=4) :: DEP2(MCGRD)
              REAL(KIND=4) :: ACCUR
              INTEGER(KIND=4) :: I1MYC
              INTEGER(KIND=4) :: I2MYC
            END SUBROUTINE SWSTPC
          END INTERFACE 
        END MODULE SWSTPC__genmod
