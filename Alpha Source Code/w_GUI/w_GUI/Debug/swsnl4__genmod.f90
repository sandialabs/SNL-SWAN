        !COMPILER-GENERATED INTERFACE MODULE: Thu Dec 20 11:58:00 2012
        MODULE SWSNL4__genmod
          INTERFACE 
            SUBROUTINE SWSNL4(WWINT,WWAWG,SPCSIG,SNLC1,DAL1,DAL2,DAL3,  &
     &DEP2,AC2,KMESPC,MEMNL4,FACHFR,IDIA,ITER)
              USE SWCOMM3
              INTEGER(KIND=4) :: WWINT(*)
              REAL(KIND=4) :: WWAWG(*)
              REAL(KIND=4) :: SPCSIG(MSC)
              REAL(KIND=4) :: SNLC1
              REAL(KIND=4) :: DAL1
              REAL(KIND=4) :: DAL2
              REAL(KIND=4) :: DAL3
              REAL(KIND=4) :: DEP2(MCGRD)
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: KMESPC
              REAL(KIND=4) :: MEMNL4(MDC,MSC,MCGRD)
              REAL(KIND=4) :: FACHFR
              INTEGER(KIND=4) :: IDIA
              INTEGER(KIND=4) :: ITER
            END SUBROUTINE SWSNL4
          END INTERFACE 
        END MODULE SWSNL4__genmod
