        !COMPILER-GENERATED INTERFACE MODULE: Mon Apr 29 16:05:10 2013
        MODULE SWOEXD__genmod
          INTERFACE 
            SUBROUTINE SWOEXD(OQPROC,MIP,XC,YC,VOQR,VOQ,COMPDA,KGRPNT,  &
     &FORCE,CROSS,IONOD)
              USE SWANGRIDDATA
              USE SWCOMM3
              INTEGER(KIND=4) :: MIP
              LOGICAL(KIND=4) :: OQPROC(*)
              REAL(KIND=4) :: XC(*)
              REAL(KIND=4) :: YC(*)
              INTEGER(KIND=4) :: VOQR(*)
              REAL(KIND=4) :: VOQ(MIP,*)
              REAL(KIND=4) :: COMPDA(MCGRD,MCMVAR)
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              REAL(KIND=4) :: FORCE(NVERTS,2)
              LOGICAL(KIND=4) :: CROSS(4,MIP)
              INTEGER(KIND=4) :: IONOD(*)
            END SUBROUTINE SWOEXD
          END INTERFACE 
        END MODULE SWOEXD__genmod
