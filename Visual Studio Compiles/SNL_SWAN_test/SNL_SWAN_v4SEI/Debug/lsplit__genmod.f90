        !COMPILER-GENERATED INTERFACE MODULE: Mon Sep 16 14:57:38 2013
        MODULE LSPLIT__genmod
          INTERFACE 
            SUBROUTINE LSPLIT(RELINE,DATITM,NUMITM)
              INTEGER(KIND=4), INTENT(IN) :: NUMITM
              CHARACTER(*), INTENT(IN) :: RELINE
              CHARACTER(*), INTENT(OUT) :: DATITM(NUMITM)
            END SUBROUTINE LSPLIT
          END INTERFACE 
        END MODULE LSPLIT__genmod