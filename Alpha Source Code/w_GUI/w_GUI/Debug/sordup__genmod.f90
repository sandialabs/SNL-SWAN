        !COMPILER-GENERATED INTERFACE MODULE: Thu Dec 20 11:58:04 2012
        MODULE SORDUP__genmod
          INTERFACE 
            SUBROUTINE SORDUP(ISSTOP,IDCMIN,IDCMAX,CAX,CAY,AC2,IMATRA,  &
     &IMATDA,RDX,RDY,TRAC0,TRAC1)
              USE SWCOMM3
              INTEGER(KIND=4) :: ISSTOP
              INTEGER(KIND=4) :: IDCMIN(MSC)
              INTEGER(KIND=4) :: IDCMAX(MSC)
              REAL(KIND=4) :: CAX(MDC,MSC,10)
              REAL(KIND=4) :: CAY(MDC,MSC,10)
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: IMATRA(MDC,MSC)
              REAL(KIND=4) :: IMATDA(MDC,MSC)
              REAL(KIND=4) :: RDX(10)
              REAL(KIND=4) :: RDY(10)
              REAL(KIND=4) :: TRAC0(MDC,MSC,3)
              REAL(KIND=4) :: TRAC1(MDC,MSC,3)
            END SUBROUTINE SORDUP
          END INTERFACE 
        END MODULE SORDUP__genmod
