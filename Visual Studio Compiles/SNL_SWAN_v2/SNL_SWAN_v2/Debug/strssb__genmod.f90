        !COMPILER-GENERATED INTERFACE MODULE: Wed Apr 24 17:03:40 2013
        MODULE STRSSB__genmod
          INTERFACE 
            SUBROUTINE STRSSB(IDDLOW,IDDTOP,IDCMIN,IDCMAX,ISSTOP,CAX,CAY&
     &,CAS,AC2,SPCSIG,IMATRA,ANYBLK,RDX,RDY,TRAC0)
              USE SWCOMM3
              INTEGER(KIND=4) :: IDDLOW
              INTEGER(KIND=4) :: IDDTOP
              INTEGER(KIND=4) :: IDCMIN(MSC)
              INTEGER(KIND=4) :: IDCMAX(MSC)
              INTEGER(KIND=4) :: ISSTOP
              REAL(KIND=4) :: CAX(MDC,MSC,ICMAX)
              REAL(KIND=4) :: CAY(MDC,MSC,ICMAX)
              REAL(KIND=4) :: CAS(MDC,MSC,ICMAX)
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: SPCSIG(MSC)
              REAL(KIND=4) :: IMATRA(MDC,MSC)
              LOGICAL(KIND=4) :: ANYBLK(MDC,MSC)
              REAL(KIND=4) :: RDX(10)
              REAL(KIND=4) :: RDY(10)
              REAL(KIND=4) :: TRAC0(MDC,MSC,3)
            END SUBROUTINE STRSSB
          END INTERFACE 
        END MODULE STRSSB__genmod
