        !COMPILER-GENERATED INTERFACE MODULE: Thu Dec 20 11:58:00 2012
        MODULE SWCOLSPC__genmod
          INTERFACE 
            SUBROUTINE SWCOLSPC(RTYPE,OQI,MIP,IRQ,BLKND,XC,YC)
              USE M_PARALL
              INTEGER(KIND=4) :: MIP
              CHARACTER(LEN=4) :: RTYPE
              INTEGER(KIND=4) :: OQI(4)
              INTEGER(KIND=4) :: IRQ
              REAL(KIND=4) :: BLKND(MXCGL,MYCGL)
              REAL(KIND=4) :: XC(MIP)
              REAL(KIND=4) :: YC(MIP)
            END SUBROUTINE SWCOLSPC
          END INTERFACE 
        END MODULE SWCOLSPC__genmod