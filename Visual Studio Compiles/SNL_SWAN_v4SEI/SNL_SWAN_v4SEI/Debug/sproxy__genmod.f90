        !COMPILER-GENERATED INTERFACE MODULE: Mon Apr 29 16:05:06 2013
        MODULE SPROXY__genmod
          INTERFACE 
            SUBROUTINE SPROXY(CAX,CAY,CGO,ECOS,ESIN,UX2,UY2,SWPDIR)
              USE SWCOMM3
              REAL(KIND=4) :: CAX(MDC,MSC,ICMAX)
              REAL(KIND=4) :: CAY(MDC,MSC,ICMAX)
              REAL(KIND=4) :: CGO(MSC,ICMAX)
              REAL(KIND=4) :: ECOS(MDC)
              REAL(KIND=4) :: ESIN(MDC)
              REAL(KIND=4) :: UX2(MCGRD)
              REAL(KIND=4) :: UY2(MCGRD)
              INTEGER(KIND=4) :: SWPDIR
            END SUBROUTINE SPROXY
          END INTERFACE 
        END MODULE SPROXY__genmod
