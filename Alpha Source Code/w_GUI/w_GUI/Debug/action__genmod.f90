        !COMPILER-GENERATED INTERFACE MODULE: Thu Dec 20 11:57:58 2012
        MODULE ACTION__genmod
          INTERFACE 
            SUBROUTINE ACTION(IDCMIN,IDCMAX,SPCSIG,AC2,CAX,CAY,CAS,CAD, &
     &IMATLA,IMATDA,IMATUA,IMATRA,IMAT5L,IMAT6U,ISCMIN,ISCMAX,IDDLOW,   &
     &IDDTOP,ISSTOP,ANYBLK,ANYBIN,LEAKC1,AC1,DYNDEP,RDX,RDY,SWPDIR,IX,IY&
     &,KSX,KSY,XCGRID,YCGRID,ITER,KGRPNT,OBREDF,CAX1,CAY1,SPCDIR,CGO,   &
     &TRAC0,TRAC1)
              USE SWCOMM3
              INTEGER(KIND=4) :: IDCMIN(MSC)
              INTEGER(KIND=4) :: IDCMAX(MSC)
              REAL(KIND=4) :: SPCSIG(MSC)
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: CAX(MDC,MSC,10)
              REAL(KIND=4) :: CAY(MDC,MSC,10)
              REAL(KIND=4) :: CAS(MDC,MSC,10)
              REAL(KIND=4) :: CAD(MDC,MSC,10)
              REAL(KIND=4) :: IMATLA(MDC,MSC)
              REAL(KIND=4) :: IMATDA(MDC,MSC)
              REAL(KIND=4) :: IMATUA(MDC,MSC)
              REAL(KIND=4) :: IMATRA(MDC,MSC)
              REAL(KIND=4) :: IMAT5L(MDC,MSC)
              REAL(KIND=4) :: IMAT6U(MDC,MSC)
              INTEGER(KIND=4) :: ISCMIN(MDC)
              INTEGER(KIND=4) :: ISCMAX(MDC)
              INTEGER(KIND=4) :: IDDLOW
              INTEGER(KIND=4) :: IDDTOP
              INTEGER(KIND=4) :: ISSTOP
              LOGICAL(KIND=4) :: ANYBLK(MDC,MSC)
              LOGICAL(KIND=4) :: ANYBIN(MDC,MSC)
              REAL(KIND=4) :: LEAKC1(MDC,MSC)
              REAL(KIND=4) :: AC1(MDC,MSC,MCGRD)
              LOGICAL(KIND=4) :: DYNDEP
              REAL(KIND=4) :: RDX(10)
              REAL(KIND=4) :: RDY(10)
              INTEGER(KIND=4) :: SWPDIR
              INTEGER(KIND=4) :: IX
              INTEGER(KIND=4) :: IY
              INTEGER(KIND=4) :: KSX
              INTEGER(KIND=4) :: KSY
              REAL(KIND=4) :: XCGRID(MXC,MYC)
              REAL(KIND=4) :: YCGRID(MXC,MYC)
              INTEGER(KIND=4) :: ITER
              INTEGER(KIND=4) :: KGRPNT(MXC,MYC)
              REAL(KIND=4) :: OBREDF(MDC,MSC,2)
              REAL(KIND=4) :: CAX1(MDC,MSC,10)
              REAL(KIND=4) :: CAY1(MDC,MSC,10)
              REAL(KIND=4) :: SPCDIR(MDC,6)
              REAL(KIND=4) :: CGO(MSC,10)
              REAL(KIND=4) :: TRAC0(1:MDC,1:MSC,1:3)
              REAL(KIND=4) :: TRAC1(1:MDC,1:MSC,1:3)
            END SUBROUTINE ACTION
          END INTERFACE 
        END MODULE ACTION__genmod
