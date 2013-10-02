        !COMPILER-GENERATED INTERFACE MODULE: Mon Apr 29 12:10:56 2013
        MODULE WINDP1__genmod
          INTERFACE 
            SUBROUTINE WINDP1(WIND10,THETAW,IDWMIN,IDWMAX,FPM,UFRIC,WX2,&
     &WY2,ANYWND,SPCDIR,UX2,UY2,SPCSIG)
              USE SWCOMM3
              REAL(KIND=4) :: WIND10
              REAL(KIND=4) :: THETAW
              INTEGER(KIND=4) :: IDWMIN
              INTEGER(KIND=4) :: IDWMAX
              REAL(KIND=4) :: FPM
              REAL(KIND=4) :: UFRIC
              REAL(KIND=4) :: WX2(MCGRD)
              REAL(KIND=4) :: WY2(MCGRD)
              LOGICAL(KIND=4) :: ANYWND(MDC)
              REAL(KIND=4) :: SPCDIR(MDC,6)
              REAL(KIND=4) :: UX2(MCGRD)
              REAL(KIND=4) :: UY2(MCGRD)
              REAL(KIND=4) :: SPCSIG(MSC)
            END SUBROUTINE WINDP1
          END INTERFACE 
        END MODULE WINDP1__genmod
