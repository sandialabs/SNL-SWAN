        !COMPILER-GENERATED INTERFACE MODULE: Wed Apr 24 17:03:29 2013
        MODULE SWBLOK__genmod
          INTERFACE 
            SUBROUTINE SWBLOK(RTYPE,OQI,IVTYP,FAC,PSNAME,MXK,MYK,IRQ,   &
     &VOQR,VOQ)
              INTEGER(KIND=4) :: MYK
              INTEGER(KIND=4) :: MXK
              INTEGER(KIND=4) :: OQI(4)
              CHARACTER(LEN=4) :: RTYPE
              INTEGER(KIND=4) :: IVTYP(OQI((3)))
              REAL(KIND=4) :: FAC(OQI((3)))
              CHARACTER(LEN=8) :: PSNAME
              INTEGER(KIND=4) :: IRQ
              INTEGER(KIND=4) :: VOQR(*)
              REAL(KIND=4) :: VOQ(MXK*MYK,*)
            END SUBROUTINE SWBLOK
          END INTERFACE 
        END MODULE SWBLOK__genmod
