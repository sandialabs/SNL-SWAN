        !COMPILER-GENERATED INTERFACE MODULE: Mon Sep 16 14:57:35 2013
        MODULE SWANSWEEPSEL__genmod
          INTERFACE 
            SUBROUTINE SWANSWEEPSEL(IDCMIN,IDCMAX,ANYBIN,ISCMIN,ISCMAX, &
     &IDDLOW,IDDTOP,IDTOT,ISSLOW,ISSTOP,ISTOT,CAX,CAY,RDX,RDY,SPCSIG)
              USE SWCOMM3
              INTEGER(KIND=4), INTENT(OUT) :: IDCMIN(MSC)
              INTEGER(KIND=4), INTENT(OUT) :: IDCMAX(MSC)
              LOGICAL(KIND=4), INTENT(OUT) :: ANYBIN(MDC,MSC)
              INTEGER(KIND=4), INTENT(OUT) :: ISCMIN(MDC)
              INTEGER(KIND=4), INTENT(OUT) :: ISCMAX(MDC)
              INTEGER(KIND=4), INTENT(OUT) :: IDDLOW
              INTEGER(KIND=4), INTENT(OUT) :: IDDTOP
              INTEGER(KIND=4), INTENT(OUT) :: IDTOT
              INTEGER(KIND=4), INTENT(OUT) :: ISSLOW
              INTEGER(KIND=4), INTENT(OUT) :: ISSTOP
              INTEGER(KIND=4), INTENT(OUT) :: ISTOT
              REAL(KIND=4), INTENT(IN) :: CAX(MDC,MSC,ICMAX)
              REAL(KIND=4), INTENT(IN) :: CAY(MDC,MSC,ICMAX)
              REAL(KIND=4), INTENT(IN) :: RDX(2)
              REAL(KIND=4), INTENT(IN) :: RDY(2)
              REAL(KIND=4), INTENT(IN) :: SPCSIG(MSC)
            END SUBROUTINE SWANSWEEPSEL
          END INTERFACE 
        END MODULE SWANSWEEPSEL__genmod