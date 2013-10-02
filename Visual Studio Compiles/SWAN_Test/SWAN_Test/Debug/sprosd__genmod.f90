        !COMPILER-GENERATED INTERFACE MODULE: Mon Sep 16 14:49:36 2013
        MODULE SPROSD__genmod
          INTERFACE 
            SUBROUTINE SPROSD(SPCSIG,KWAVE,CAS,CAD,CGO,DEP2,DEP1,ECOS,  &
     &ESIN,UX2,UY2,SWPDIR,IDCMIN,IDCMAX,COSCOS,SINSIN,SINCOS,RDX,RDY,CAX&
     &,CAY,ANYBIN,KGRPNT,XCGRID,YCGRID,IDDLOW,IDDTOP)
              USE SWCOMM3
              REAL(KIND=4) :: SPCSIG(MSC)
              REAL(KIND=4) :: KWAVE(MSC,10)
              REAL(KIND=4) :: CAS(MDC,MSC,10)
              REAL(KIND=4) :: CAD(MDC,MSC,10)
              REAL(KIND=4) :: CGO(MSC,10)
              REAL(KIND=4) :: DEP2(MCGRD)
              REAL(KIND=4) :: DEP1(MCGRD)
              REAL(KIND=4) :: ECOS(MDC)
              REAL(KIND=4) :: ESIN(MDC)
              REAL(KIND=4) :: UX2(MCGRD)
              REAL(KIND=4) :: UY2(MCGRD)
              INTEGER(KIND=4), INTENT(IN) :: SWPDIR
              INTEGER(KIND=4), INTENT(IN) :: IDCMIN(MSC)
              INTEGER(KIND=4), INTENT(IN) :: IDCMAX(MSC)
              REAL(KIND=4) :: COSCOS(MDC)
              REAL(KIND=4) :: SINSIN(MDC)
              REAL(KIND=4) :: SINCOS(MDC)
              REAL(KIND=4) :: RDX(10)
              REAL(KIND=4) :: RDY(10)
              REAL(KIND=4) :: CAX(MDC,MSC,10)
              REAL(KIND=4) :: CAY(MDC,MSC,10)
              LOGICAL(KIND=4) :: ANYBIN(MDC,MSC)
              INTEGER(KIND=4), INTENT(IN) :: KGRPNT(MXC,MYC)
              REAL(KIND=4) :: XCGRID(MXC,MYC)
              REAL(KIND=4) :: YCGRID(MXC,MYC)
              INTEGER(KIND=4), INTENT(IN) :: IDDLOW
              INTEGER(KIND=4), INTENT(IN) :: IDDTOP
            END SUBROUTINE SPROSD
          END INTERFACE 
        END MODULE SPROSD__genmod
