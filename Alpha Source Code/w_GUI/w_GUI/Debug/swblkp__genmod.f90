        !COMPILER-GENERATED INTERFACE MODULE: Thu Dec 20 11:57:56 2012
        MODULE SWBLKP__genmod
          INTERFACE 
            SUBROUTINE SWBLKP(OQI,IVTYP,MXK,MYK,VOQR,VOQ,IONOD)
              INTEGER(KIND=4) :: MYK
              INTEGER(KIND=4) :: MXK
              INTEGER(KIND=4) :: OQI(4)
              INTEGER(KIND=4) :: IVTYP(OQI((3)))
              INTEGER(KIND=4) :: VOQR(*)
              REAL(KIND=4) :: VOQ(MXK*MYK,*)
              INTEGER(KIND=4) :: IONOD(*)
            END SUBROUTINE SWBLKP
          END INTERFACE 
        END MODULE SWBLKP__genmod
