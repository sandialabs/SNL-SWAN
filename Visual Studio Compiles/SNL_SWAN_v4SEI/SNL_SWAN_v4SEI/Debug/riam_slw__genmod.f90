        !COMPILER-GENERATED INTERFACE MODULE: Mon Apr 29 16:05:26 2013
        MODULE RIAM_SLW__genmod
          INTERFACE 
            SUBROUTINE RIAM_SLW(LMAX,N,N2,G,H,DQ,DQ2,DT,DT2,W,P,ACT,SNL,&
     &MINT)
              INTEGER(KIND=4) :: N
              INTEGER(KIND=4) :: LMAX
              INTEGER(KIND=4) :: N2
              REAL(KIND=4) :: G
              REAL(KIND=4) :: H
              REAL(KIND=4) :: DQ
              REAL(KIND=4) :: DQ2
              REAL(KIND=4) :: DT
              REAL(KIND=4) :: DT2
              REAL(KIND=4) :: W(LMAX)
              REAL(KIND=4) :: P
              REAL(KIND=4) :: ACT(LMAX,N)
              REAL(KIND=4) :: SNL(LMAX,N)
              INTEGER(KIND=4) :: MINT
            END SUBROUTINE RIAM_SLW
          END INTERFACE 
        END MODULE RIAM_SLW__genmod
