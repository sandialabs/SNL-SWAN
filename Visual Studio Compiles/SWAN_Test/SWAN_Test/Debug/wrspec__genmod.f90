        !COMPILER-GENERATED INTERFACE MODULE: Mon Sep 16 14:49:32 2013
        MODULE WRSPEC__genmod
          INTERFACE 
            SUBROUTINE WRSPEC(NREF,ACLOC)
              USE SWCOMM3
              INTEGER(KIND=4), INTENT(IN) :: NREF
              REAL(KIND=4), INTENT(IN) :: ACLOC(1:MDC,1:MSC)
            END SUBROUTINE WRSPEC
          END INTERFACE 
        END MODULE WRSPEC__genmod