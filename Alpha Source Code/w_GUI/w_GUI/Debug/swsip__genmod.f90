        !COMPILER-GENERATED INTERFACE MODULE: Thu Dec 20 11:57:58 2012
        MODULE SWSIP__genmod
          INTERFACE 
            SUBROUTINE SWSIP(AC2,IMATDA,IMATRA,IMATLA,IMATUA,IMAT5L,    &
     &IMAT6U,AC2OLD,REPS,MAXIT,IAMOUT,INOCNV,IDDLOW,IDDTOP,ISSTOP,IDCMIN&
     &,IDCMAX)
              USE SWCOMM3
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: IMATDA(MDC,MSC)
              REAL(KIND=4) :: IMATRA(MDC,MSC)
              REAL(KIND=4) :: IMATLA(MDC,MSC)
              REAL(KIND=4) :: IMATUA(MDC,MSC)
              REAL(KIND=4) :: IMAT5L(MDC,MSC)
              REAL(KIND=4) :: IMAT6U(MDC,MSC)
              REAL(KIND=4) :: AC2OLD(MDC,MSC)
              REAL(KIND=4) :: REPS
              INTEGER(KIND=4) :: MAXIT
              INTEGER(KIND=4) :: IAMOUT
              INTEGER(KIND=4) :: INOCNV
              INTEGER(KIND=4) :: IDDLOW
              INTEGER(KIND=4) :: IDDTOP
              INTEGER(KIND=4) :: ISSTOP
              INTEGER(KIND=4) :: IDCMIN(MSC)
              INTEGER(KIND=4) :: IDCMAX(MSC)
            END SUBROUTINE SWSIP
          END INTERFACE 
        END MODULE SWSIP__genmod
