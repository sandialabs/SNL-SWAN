        !COMPILER-GENERATED INTERFACE MODULE: Mon Sep 16 14:57:27 2013
        MODULE SWSENDAC__genmod
          INTERFACE 
            SUBROUTINE SWSENDAC(AC2,IE,J,SWPDIR,KGRPNT)
              USE SWCOMM3
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              INTEGER(KIND=4) :: IE
              INTEGER(KIND=4) :: J
              INTEGER(KIND=4) :: SWPDIR
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
            END SUBROUTINE SWSENDAC
          END INTERFACE 
        END MODULE SWSENDAC__genmod