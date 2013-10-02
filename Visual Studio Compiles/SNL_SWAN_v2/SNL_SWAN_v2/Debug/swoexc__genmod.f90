        !COMPILER-GENERATED INTERFACE MODULE: Wed Apr 24 17:03:17 2013
        MODULE SWOEXC__genmod
          INTERFACE 
            SUBROUTINE SWOEXC(PSTYPE,OPI,OPR,X,Y,MIP,XP,YP,XC,YC,KGRPNT,&
     &XCGRID,YCGRID,CROSS)
              USE SWCOMM3
              INTEGER(KIND=4) :: MIP
              CHARACTER(LEN=1) :: PSTYPE
              INTEGER(KIND=4) :: OPI(2)
              REAL(KIND=4) :: OPR(5)
              REAL(KIND=4) :: X(MIP)
              REAL(KIND=4) :: Y(MIP)
              REAL(KIND=4) :: XP(MIP)
              REAL(KIND=4) :: YP(MIP)
              REAL(KIND=4) :: XC(*)
              REAL(KIND=4) :: YC(*)
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              REAL(KIND=4) :: XCGRID(MXC,MYC)
              REAL(KIND=4) :: YCGRID(MXC,MYC)
              LOGICAL(KIND=4) :: CROSS(4,MIP)
            END SUBROUTINE SWOEXC
          END INTERFACE 
        END MODULE SWOEXC__genmod
