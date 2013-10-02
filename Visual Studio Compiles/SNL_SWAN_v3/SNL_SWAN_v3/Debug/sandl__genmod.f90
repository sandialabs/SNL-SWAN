        !COMPILER-GENERATED INTERFACE MODULE: Mon Apr 29 12:11:14 2013
        MODULE SANDL__genmod
          INTERFACE 
            SUBROUTINE SANDL(ISSTOP,IDCMIN,IDCMAX,CGO,CAX,CAY,AC2,AC1,  &
     &IMATRA,IMATDA,RDX,RDY,CAX1,CAY1,SPCDIR,TRAC0,TRAC1)
              USE SWCOMM3
              INTEGER(KIND=4) :: ISSTOP
              INTEGER(KIND=4) :: IDCMIN(MSC)
              INTEGER(KIND=4) :: IDCMAX(MSC)
              REAL(KIND=4) :: CGO(MSC,10)
              REAL(KIND=4) :: CAX(MDC,MSC,10)
              REAL(KIND=4) :: CAY(MDC,MSC,10)
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: AC1(MDC,MSC,MCGRD)
              REAL(KIND=4) :: IMATRA(MDC,MSC)
              REAL(KIND=4) :: IMATDA(MDC,MSC)
              REAL(KIND=4) :: RDX(10)
              REAL(KIND=4) :: RDY(10)
              REAL(KIND=4) :: CAX1(MDC,MSC,10)
              REAL(KIND=4) :: CAY1(MDC,MSC,10)
              REAL(KIND=4) :: SPCDIR(MDC,6)
              REAL(KIND=4) :: TRAC0(MDC,MSC,3)
              REAL(KIND=4) :: TRAC1(MDC,MSC,3)
            END SUBROUTINE SANDL
          END INTERFACE 
        END MODULE SANDL__genmod
