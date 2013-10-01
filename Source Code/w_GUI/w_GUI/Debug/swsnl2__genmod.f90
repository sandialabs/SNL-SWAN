        !COMPILER-GENERATED INTERFACE MODULE: Thu Dec 20 11:58:00 2012
        MODULE SWSNL2__genmod
          INTERFACE 
            SUBROUTINE SWSNL2(IDDLOW,IDDTOP,WWINT,WWAWG,UE,SA1,ISSTOP,  &
     &SA2,SPCSIG,SNLC1,DAL1,DAL2,DAL3,SFNL,DEP2,AC2,KMESPC,REDC0,REDC1, &
     &IMATDA,IMATRA,FACHFR,PLNL4S,IDCMIN,IDCMAX)
              USE SWCOMM3
              USE SWCOMM4
              INTEGER(KIND=4) :: IDDLOW
              INTEGER(KIND=4) :: IDDTOP
              INTEGER(KIND=4) :: WWINT(*)
              REAL(KIND=4) :: WWAWG(*)
              REAL(KIND=4) :: UE(MSC4MI:MSC4MA,MDC4MI:MDC4MA)
              REAL(KIND=4) :: SA1(MSC4MI:MSC4MA,MDC4MI:MDC4MA)
              INTEGER(KIND=4) :: ISSTOP
              REAL(KIND=4) :: SA2(MSC4MI:MSC4MA,MDC4MI:MDC4MA)
              REAL(KIND=4) :: SPCSIG(MSC)
              REAL(KIND=4) :: SNLC1
              REAL(KIND=4) :: DAL1
              REAL(KIND=4) :: DAL2
              REAL(KIND=4) :: DAL3
              REAL(KIND=4) :: SFNL(MSC4MI:MSC4MA,MDC4MI:MDC4MA)
              REAL(KIND=4) :: DEP2(MCGRD)
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: KMESPC
              REAL(KIND=4) :: REDC0(MDC,MSC,2)
              REAL(KIND=4) :: REDC1(MDC,MSC,2)
              REAL(KIND=4) :: IMATDA(MDC,MSC)
              REAL(KIND=4) :: IMATRA(MDC,MSC)
              REAL(KIND=4) :: FACHFR
              REAL(KIND=4) :: PLNL4S(MDC,MSC,NPTST)
              INTEGER(KIND=4) :: IDCMIN(MSC)
              INTEGER(KIND=4) :: IDCMAX(MSC)
            END SUBROUTINE SWSNL2
          END INTERFACE 
        END MODULE SWSNL2__genmod
