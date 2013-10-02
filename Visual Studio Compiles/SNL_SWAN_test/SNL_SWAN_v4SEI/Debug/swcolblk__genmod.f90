        !COMPILER-GENERATED INTERFACE MODULE: Mon Sep 16 14:57:27 2013
        MODULE SWCOLBLK__genmod
          INTERFACE 
            SUBROUTINE SWCOLBLK(RTYPE,OQI,IVTYP,FAC,PSNAME,MXK,MYK,IRQ, &
     &BLKND,XC,YC)
              USE M_PARALL
              INTEGER(KIND=4) :: MYK
              INTEGER(KIND=4) :: MXK
              INTEGER(KIND=4) :: OQI(4)
              CHARACTER(LEN=4) :: RTYPE
              INTEGER(KIND=4) :: IVTYP(OQI((3)))
              REAL(KIND=4) :: FAC(OQI((3)))
              CHARACTER(LEN=8) :: PSNAME
              INTEGER(KIND=4) :: IRQ
              REAL(KIND=4) :: BLKND(MXCGL,MYCGL)
              REAL(KIND=4) :: XC(MXK*MYK)
              REAL(KIND=4) :: YC(MXK*MYK)
            END SUBROUTINE SWCOLBLK
          END INTERFACE 
        END MODULE SWCOLBLK__genmod
