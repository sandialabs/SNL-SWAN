        !COMPILER-GENERATED INTERFACE MODULE: Mon Sep 16 14:57:30 2013
        MODULE REFLECT__genmod
          INTERFACE 
            SUBROUTINE REFLECT(AC2,REFLSO,X1,Y1,X2,Y2,X3,Y3,X4,Y4,CAX,  &
     &CAY,RDX,RDY,ILINK,REF0,LREFDIFF,POWN,ANYBIN,LRFRD,SPCSIG,SPCDIR,  &
     &FD1,FD2,FD3,FD4,OBREDF,REFLTST)
              USE SWCOMM3
              REAL(KIND=4), INTENT(IN) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4), INTENT(INOUT) :: REFLSO(MDC,MSC)
              REAL(KIND=4), INTENT(IN) :: X1
              REAL(KIND=4), INTENT(IN) :: Y1
              REAL(KIND=4), INTENT(IN) :: X2
              REAL(KIND=4), INTENT(IN) :: Y2
              REAL(KIND=4), INTENT(IN) :: X3
              REAL(KIND=4), INTENT(IN) :: Y3
              REAL(KIND=4), INTENT(IN) :: X4
              REAL(KIND=4), INTENT(IN) :: Y4
              REAL(KIND=4), INTENT(IN) :: CAX(MDC,MSC,10)
              REAL(KIND=4), INTENT(IN) :: CAY(MDC,MSC,10)
              REAL(KIND=4), INTENT(IN) :: RDX(10)
              REAL(KIND=4), INTENT(IN) :: RDY(10)
              INTEGER(KIND=4), INTENT(IN) :: ILINK
              REAL(KIND=4), INTENT(INOUT) :: REF0
              INTEGER(KIND=4), INTENT(IN) :: LREFDIFF
              REAL(KIND=4), INTENT(IN) :: POWN
              LOGICAL(KIND=4), INTENT(IN) :: ANYBIN(MDC,MSC)
              INTEGER(KIND=4), INTENT(IN) :: LRFRD
              REAL(KIND=4), INTENT(IN) :: SPCSIG(MSC)
              REAL(KIND=4), INTENT(IN) :: SPCDIR(MDC,6)
              REAL(KIND=4), INTENT(IN) :: FD1
              REAL(KIND=4), INTENT(IN) :: FD2
              REAL(KIND=4), INTENT(IN) :: FD3
              REAL(KIND=4), INTENT(IN) :: FD4
              REAL(KIND=4), INTENT(IN) :: OBREDF(MDC,MSC,2)
              LOGICAL(KIND=4) :: REFLTST
            END SUBROUTINE REFLECT
          END INTERFACE 
        END MODULE REFLECT__genmod
