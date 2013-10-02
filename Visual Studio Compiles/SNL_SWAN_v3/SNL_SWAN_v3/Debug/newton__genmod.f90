        !COMPILER-GENERATED INTERFACE MODULE: Mon Apr 29 12:10:45 2013
        MODULE NEWTON__genmod
          INTERFACE 
            SUBROUTINE NEWTON(XP,YP,XCGRID,YCGRID,KGRPNT,MXITNR,ITER,XC,&
     &YC,FIND)
              USE SWCOMM3
              REAL(KIND=4) :: XP
              REAL(KIND=4) :: YP
              REAL(KIND=4) :: XCGRID(MXC,MYC)
              REAL(KIND=4) :: YCGRID(MXC,MYC)
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              INTEGER(KIND=4) :: MXITNR
              INTEGER(KIND=4) :: ITER
              REAL(KIND=4) :: XC
              REAL(KIND=4) :: YC
              LOGICAL(KIND=4) :: FIND
            END SUBROUTINE NEWTON
          END INTERFACE 
        END MODULE NEWTON__genmod
