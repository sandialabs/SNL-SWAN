        !COMPILER-GENERATED INTERFACE MODULE: Thu Dec 20 11:57:57 2012
        MODULE VALIDBP__genmod
          INTERFACE 
            FUNCTION VALIDBP(IX,IY,KGRPNT,WNP) RESULT(VALIDBP_0)
              USE SWCOMM3
              INTEGER(KIND=4) :: IX
              INTEGER(KIND=4) :: IY
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              INTEGER(KIND=4) :: WNP
              LOGICAL(KIND=4) :: VALIDBP_0
            END FUNCTION VALIDBP
          END INTERFACE 
        END MODULE VALIDBP__genmod
