        !COMPILER-GENERATED INTERFACE MODULE: Mon Apr 29 16:05:32 2013
        MODULE FLFILE__genmod
          INTERFACE 
            SUBROUTINE FLFILE(IGR1,IGR2,ARR,ARR2,JX1,JX2,JX3,JY1,JY2,JY3&
     &,COSFC,SINFC,COMPDA,XCGRID,YCGRID,KGRPNT,IERR)
              USE SWCOMM3
              INTEGER(KIND=4) :: IGR1
              INTEGER(KIND=4) :: IGR2
              REAL(KIND=4) :: ARR(*)
              REAL(KIND=4) :: ARR2(*)
              INTEGER(KIND=4) :: JX1
              INTEGER(KIND=4) :: JX2
              INTEGER(KIND=4) :: JX3
              INTEGER(KIND=4) :: JY1
              INTEGER(KIND=4) :: JY2
              INTEGER(KIND=4) :: JY3
              REAL(KIND=4) :: COSFC
              REAL(KIND=4) :: SINFC
              REAL(KIND=4) :: COMPDA(MCGRD,MCMVAR)
              REAL(KIND=4) :: XCGRID(MXC,MYC)
              REAL(KIND=4) :: YCGRID(MXC,MYC)
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              INTEGER(KIND=4) :: IERR
            END SUBROUTINE FLFILE
          END INTERFACE 
        END MODULE FLFILE__genmod
