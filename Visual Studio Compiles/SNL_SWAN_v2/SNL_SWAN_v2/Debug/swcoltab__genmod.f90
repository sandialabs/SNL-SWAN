        !COMPILER-GENERATED INTERFACE MODULE: Wed Apr 24 17:03:39 2013
        MODULE SWCOLTAB__genmod
          INTERFACE 
            SUBROUTINE SWCOLTAB(RTYPE,OQI,IVTYP,MIP,IRQ,BLKND,XC,YC,XP, &
     &YP)
              USE M_PARALL
              INTEGER(KIND=4) :: MIP
              INTEGER(KIND=4) :: OQI(4)
              CHARACTER(LEN=4) :: RTYPE
              INTEGER(KIND=4) :: IVTYP(OQI((3)))
              INTEGER(KIND=4) :: IRQ
              REAL(KIND=4) :: BLKND(MXCGL,MYCGL)
              REAL(KIND=4) :: XC(MIP)
              REAL(KIND=4) :: YC(MIP)
              REAL(KIND=4) :: XP(MIP)
              REAL(KIND=4) :: YP(MIP)
            END SUBROUTINE SWCOLTAB
          END INTERFACE 
        END MODULE SWCOLTAB__genmod
