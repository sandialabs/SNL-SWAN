        !COMPILER-GENERATED INTERFACE MODULE: Thu Dec 20 11:58:03 2012
        MODULE SSURF__genmod
          INTERFACE 
            SUBROUTINE SSURF(ETOT,HM,QB,SMEBRK,KMESPC,SPCSIG,AC2,IMATRA,&
     &IMATDA,IDCMIN,IDCMAX,PLWBRK,ISSTOP,DISSC0,DISSC1)
              USE SWCOMM3
              USE SWCOMM4
              REAL(KIND=4) :: ETOT
              REAL(KIND=4) :: HM
              REAL(KIND=4) :: QB
              REAL(KIND=4) :: SMEBRK
              REAL(KIND=4) :: KMESPC
              REAL(KIND=4) :: SPCSIG(MSC)
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: IMATRA(MDC,MSC)
              REAL(KIND=4) :: IMATDA(MDC,MSC)
              INTEGER(KIND=4) :: IDCMIN(MSC)
              INTEGER(KIND=4) :: IDCMAX(MSC)
              REAL(KIND=4) :: PLWBRK(MDC,MSC,NPTST)
              INTEGER(KIND=4) :: ISSTOP
              REAL(KIND=4) :: DISSC0(MDC,MSC,3)
              REAL(KIND=4) :: DISSC1(MDC,MSC,3)
            END SUBROUTINE SSURF
          END INTERFACE 
        END MODULE SSURF__genmod
