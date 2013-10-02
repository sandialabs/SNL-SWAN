        !COMPILER-GENERATED INTERFACE MODULE: Wed Apr 24 17:03:40 2013
        MODULE DSPHER__genmod
          INTERFACE 
            SUBROUTINE DSPHER(CAD,CAX,CAY,ANYBIN,YCGRID,ECOS,ESIN)
              USE SWCOMM3
              REAL(KIND=4) :: CAD(MDC,MSC,10)
              REAL(KIND=4) :: CAX(MDC,MSC,10)
              REAL(KIND=4) :: CAY(MDC,MSC,10)
              LOGICAL(KIND=4) :: ANYBIN(MDC,MSC)
              REAL(KIND=4) :: YCGRID(MXC,MYC)
              REAL(KIND=4) :: ECOS(MDC)
              REAL(KIND=4) :: ESIN(MDC)
            END SUBROUTINE DSPHER
          END INTERFACE 
        END MODULE DSPHER__genmod
