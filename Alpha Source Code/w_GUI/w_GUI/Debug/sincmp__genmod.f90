        !COMPILER-GENERATED INTERFACE MODULE: Thu Dec 20 11:57:57 2012
        MODULE SINCMP__genmod
          INTERFACE 
            FUNCTION SINCMP(XP,YP,XCGRID,YCGRID,KGRPNT,KGRBND) RESULT(  &
     &SINCMP_0)
              USE SWCOMM3
              REAL(KIND=4) :: XP
              REAL(KIND=4) :: YP
              REAL(KIND=4) :: XCGRID(MXC,MYC)
              REAL(KIND=4) :: YCGRID(MXC,MYC)
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              INTEGER(KIND=4) :: KGRBND(*)
              LOGICAL(KIND=4) :: SINCMP_0
            END FUNCTION SINCMP
          END INTERFACE 
        END MODULE SINCMP__genmod