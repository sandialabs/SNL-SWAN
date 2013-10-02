        !COMPILER-GENERATED INTERFACE MODULE: Mon Sep 16 14:49:44 2013
        MODULE SWSPEC__genmod
          INTERFACE 
            SUBROUTINE SWSPEC(RTYPE,OQI,MIP,VOQR,VOQ,AC2,ACLOC,SPCSIG,  &
     &SPCDIR,DEP2,KGRPNT,CROSS,IONOD)
              USE SWCOMM3
              INTEGER(KIND=4) :: MIP
              CHARACTER(*) :: RTYPE
              INTEGER(KIND=4) :: OQI(4)
              INTEGER(KIND=4) :: VOQR(*)
              REAL(KIND=4) :: VOQ(MIP,*)
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: ACLOC(*)
              REAL(KIND=4) :: SPCSIG(MSC)
              REAL(KIND=4) :: SPCDIR(MDC,6)
              REAL(KIND=4) :: DEP2(MCGRD)
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              LOGICAL(KIND=4), INTENT(IN) :: CROSS(1:4,1:MIP)
              INTEGER(KIND=4) :: IONOD(*)
            END SUBROUTINE SWSPEC
          END INTERFACE 
        END MODULE SWSPEC__genmod
