        !COMPILER-GENERATED INTERFACE MODULE: Mon Sep 16 14:57:40 2013
        MODULE SETUP2D__genmod
          INTERFACE 
            SUBROUTINE SETUP2D(SETUP,XCGRID,YCGRID,WFRCX,WFRCY,KGRPNT,  &
     &DEPTH,AMAT,RHS,JCTA)
              USE SWCOMM3
              REAL(KIND=4) :: SETUP(MCGRD)
              REAL(KIND=4) :: XCGRID(MXC,MYC)
              REAL(KIND=4) :: YCGRID(MXC,MYC)
              REAL(KIND=4) :: WFRCX(MCGRD)
              REAL(KIND=4) :: WFRCY(MCGRD)
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              REAL(KIND=4) :: DEPTH(MCGRD)
              REAL(KIND=4) :: AMAT(MCGRD,9)
              REAL(KIND=4) :: RHS(MCGRD)
              REAL(KIND=4) :: JCTA(MCGRD,2,2,2)
            END SUBROUTINE SETUP2D
          END INTERFACE 
        END MODULE SETUP2D__genmod
