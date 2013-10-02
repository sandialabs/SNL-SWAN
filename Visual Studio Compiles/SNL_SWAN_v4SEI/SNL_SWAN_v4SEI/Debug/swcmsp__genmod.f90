        !COMPILER-GENERATED INTERFACE MODULE: Mon Apr 29 16:05:16 2013
        MODULE SWCMSP__genmod
          INTERFACE 
            SUBROUTINE SWCMSP(OTYPE,XC,YC,AC2,ACLOC,SPCSIG,DEP,DEP2,UX, &
     &UY,ECOS,ESIN,OFAC,KGRPNT,CROSS,IERR)
              USE SWCOMM3
              INTEGER(KIND=4) :: OTYPE
              REAL(KIND=4) :: XC
              REAL(KIND=4) :: YC
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: ACLOC(*)
              REAL(KIND=4) :: SPCSIG(MSC)
              REAL(KIND=4) :: DEP
              REAL(KIND=4) :: DEP2(MCGRD)
              REAL(KIND=4) :: UX
              REAL(KIND=4) :: UY
              REAL(KIND=4) :: ECOS(MDC)
              REAL(KIND=4) :: ESIN(MDC)
              REAL(KIND=4) :: OFAC
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              LOGICAL(KIND=4), INTENT(IN) :: CROSS(1:4)
              INTEGER(KIND=4) :: IERR
            END SUBROUTINE SWCMSP
          END INTERFACE 
        END MODULE SWCMSP__genmod
