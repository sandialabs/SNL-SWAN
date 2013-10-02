        !COMPILER-GENERATED INTERFACE MODULE: Mon Apr 29 12:11:09 2013
        MODULE SOLPRE__genmod
          INTERFACE 
            SUBROUTINE SOLPRE(AC2,AC2OLD,IMATRA,IMATLA,IMATDA,IMATUA,   &
     &IMAT5L,IMAT6U,IDCMIN,IDCMAX,ANYBIN,IDTOT,ISTOT,IDDLOW,IDDTOP,     &
     &ISSTOP,SPCSIG)
              USE SWCOMM3
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: AC2OLD(MDC,MSC)
              REAL(KIND=4) :: IMATRA(MDC,MSC)
              REAL(KIND=4) :: IMATLA(MDC,MSC)
              REAL(KIND=4) :: IMATDA(MDC,MSC)
              REAL(KIND=4) :: IMATUA(MDC,MSC)
              REAL(KIND=4) :: IMAT5L(MDC,MSC)
              REAL(KIND=4) :: IMAT6U(MDC,MSC)
              INTEGER(KIND=4) :: IDCMIN(MSC)
              INTEGER(KIND=4) :: IDCMAX(MSC)
              LOGICAL(KIND=4) :: ANYBIN(MDC,MSC)
              INTEGER(KIND=4) :: IDTOT
              INTEGER(KIND=4) :: ISTOT
              INTEGER(KIND=4) :: IDDLOW
              INTEGER(KIND=4) :: IDDTOP
              INTEGER(KIND=4) :: ISSTOP
              REAL(KIND=4) :: SPCSIG(MSC)
            END SUBROUTINE SOLPRE
          END INTERFACE 
        END MODULE SOLPRE__genmod
