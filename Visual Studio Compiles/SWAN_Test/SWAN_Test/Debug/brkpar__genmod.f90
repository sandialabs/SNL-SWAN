        !COMPILER-GENERATED INTERFACE MODULE: Mon Sep 16 14:49:40 2013
        MODULE BRKPAR__genmod
          INTERFACE 
            SUBROUTINE BRKPAR(BRCOEF,ECOS,ESIN,AC2,SPCSIG,DEP2,RDX,RDY, &
     &KWAVE)
              USE SWCOMM3
              REAL(KIND=4), INTENT(OUT) :: BRCOEF
              REAL(KIND=4), INTENT(IN) :: ECOS(MDC)
              REAL(KIND=4), INTENT(IN) :: ESIN(MDC)
              REAL(KIND=4), INTENT(IN) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4), INTENT(IN) :: SPCSIG(MSC)
              REAL(KIND=4), INTENT(IN) :: DEP2(MCGRD)
              REAL(KIND=4), INTENT(IN) :: RDX(10)
              REAL(KIND=4), INTENT(IN) :: RDY(10)
              REAL(KIND=4), INTENT(IN) :: KWAVE(MSC,10)
            END SUBROUTINE BRKPAR
          END INTERFACE 
        END MODULE BRKPAR__genmod
