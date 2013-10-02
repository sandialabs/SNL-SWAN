        !COMPILER-GENERATED INTERFACE MODULE: Wed Apr 24 17:03:40 2013
        MODULE SWPSEL__genmod
          INTERFACE 
            SUBROUTINE SWPSEL(SWPDIR,IDCMIN,IDCMAX,CAX,CAY,ANYBIN,ISCMIN&
     &,ISCMAX,IDTOT,ISTOT,IDDLOW,IDDTOP,ISSTOP,DEP2,UX2,UY2,SPCDIR,RDX, &
     &RDY,KGRPNT)
              USE SWCOMM3
              INTEGER(KIND=4) :: SWPDIR
              INTEGER(KIND=4) :: IDCMIN(MSC)
              INTEGER(KIND=4) :: IDCMAX(MSC)
              REAL(KIND=4) :: CAX(MDC,MSC,10)
              REAL(KIND=4) :: CAY(MDC,MSC,10)
              LOGICAL(KIND=4) :: ANYBIN(MDC,MSC)
              INTEGER(KIND=4) :: ISCMIN(MDC)
              INTEGER(KIND=4) :: ISCMAX(MDC)
              INTEGER(KIND=4) :: IDTOT
              INTEGER(KIND=4) :: ISTOT
              INTEGER(KIND=4) :: IDDLOW
              INTEGER(KIND=4) :: IDDTOP
              INTEGER(KIND=4) :: ISSTOP
              REAL(KIND=4) :: DEP2(MCGRD)
              REAL(KIND=4) :: UX2(MCGRD)
              REAL(KIND=4) :: UY2(MCGRD)
              REAL(KIND=4) :: SPCDIR(MDC,6)
              REAL(KIND=4) :: RDX(10)
              REAL(KIND=4) :: RDY(10)
              INTEGER(KIND=4), INTENT(IN) :: KGRPNT(1:MXC,1:MYC)
            END SUBROUTINE SWPSEL
          END INTERFACE 
        END MODULE SWPSEL__genmod
