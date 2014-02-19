        !COMPILER-GENERATED INTERFACE MODULE: Thu Dec 20 11:58:03 2012
        MODULE SWODDC__genmod
          INTERFACE 
            SUBROUTINE SWODDC(OPI,OPR,PSNAME,PSTYPE,MIP,MXK,MYK,XNLEN,  &
     &YNLEN,MXN,MYN,XPCN,YPCN,ALPCN,XCGRID,YCGRID,RTYPE)
              USE SWCOMM3
              INTEGER(KIND=4) :: OPI(2)
              REAL(KIND=4) :: OPR(5)
              CHARACTER(*) :: PSNAME
              CHARACTER(LEN=1) :: PSTYPE
              INTEGER(KIND=4) :: MIP
              INTEGER(KIND=4) :: MXK
              INTEGER(KIND=4) :: MYK
              REAL(KIND=4) :: XNLEN
              REAL(KIND=4) :: YNLEN
              INTEGER(KIND=4) :: MXN
              INTEGER(KIND=4) :: MYN
              REAL(KIND=4) :: XPCN
              REAL(KIND=4) :: YPCN
              REAL(KIND=4) :: ALPCN
              REAL(KIND=4) :: XCGRID(MXC,MYC)
              REAL(KIND=4) :: YCGRID(MXC,MYC)
              CHARACTER(*) :: RTYPE
            END SUBROUTINE SWODDC
          END INTERFACE 
        END MODULE SWODDC__genmod
