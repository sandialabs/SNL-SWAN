        !COMPILER-GENERATED INTERFACE MODULE: Thu Dec 20 11:57:55 2012
        MODULE SWANCOMPUTEFORCE__genmod
          INTERFACE 
            SUBROUTINE SWANCOMPUTEFORCE(FX,FY,AC2,DEP2,SPCSIG,SPCDIR)
              USE SWCOMM3
              USE SWANGRIDDATA
              REAL(KIND=4), INTENT(OUT) :: FX(NVERTS)
              REAL(KIND=4), INTENT(OUT) :: FY(NVERTS)
              REAL(KIND=4), INTENT(IN) :: AC2(MDC,MSC,NVERTS)
              REAL(KIND=4), INTENT(IN) :: DEP2(NVERTS)
              REAL(KIND=4), INTENT(IN) :: SPCSIG(MSC)
              REAL(KIND=4), INTENT(IN) :: SPCDIR(MDC,6)
            END SUBROUTINE SWANCOMPUTEFORCE
          END INTERFACE 
        END MODULE SWANCOMPUTEFORCE__genmod