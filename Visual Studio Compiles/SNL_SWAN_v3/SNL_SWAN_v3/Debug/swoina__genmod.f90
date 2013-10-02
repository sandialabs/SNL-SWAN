        !COMPILER-GENERATED INTERFACE MODULE: Mon Apr 29 12:10:55 2013
        MODULE SWOINA__genmod
          INTERFACE 
            SUBROUTINE SWOINA(XC,YC,AC2,ACLOC,KGRPNT,DEPXY,CROSS,EXCPT)
              USE SWCOMM3
              REAL(KIND=4) :: XC
              REAL(KIND=4) :: YC
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: ACLOC(MDC,MSC)
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              REAL(KIND=4) :: DEPXY(MCGRD)
              LOGICAL(KIND=4) :: CROSS(4)
              LOGICAL(KIND=4) :: EXCPT
            END SUBROUTINE SWOINA
          END INTERFACE 
        END MODULE SWOINA__genmod
