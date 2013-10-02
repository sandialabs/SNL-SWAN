        !COMPILER-GENERATED INTERFACE MODULE: Mon Apr 29 16:05:06 2013
        MODULE SPREDT__genmod
          INTERFACE 
            SUBROUTINE SPREDT(SWPDIR,AC2,CAX,CAY,IDCMIN,IDCMAX,ISSTOP,  &
     &ANYBIN,RDX,RDY,OBREDF)
              USE SWCOMM3
              INTEGER(KIND=4) :: SWPDIR
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: CAX(MDC,MSC,10)
              REAL(KIND=4) :: CAY(MDC,MSC,10)
              INTEGER(KIND=4) :: IDCMIN(MSC)
              INTEGER(KIND=4) :: IDCMAX(MSC)
              INTEGER(KIND=4) :: ISSTOP
              LOGICAL(KIND=4) :: ANYBIN(MDC,MSC)
              REAL(KIND=4) :: RDX(10)
              REAL(KIND=4) :: RDY(10)
              REAL(KIND=4) :: OBREDF(MDC,MSC,2)
            END SUBROUTINE SPREDT
          END INTERFACE 
        END MODULE SPREDT__genmod
