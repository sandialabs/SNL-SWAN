        !COMPILER-GENERATED INTERFACE MODULE: Mon Sep 16 14:57:39 2013
        MODULE SOURCE__genmod
          INTERFACE 
            SUBROUTINE SOURCE(ITER,IX,IY,SWPDIR,KWAVE,SPCSIG,ECOS,ESIN, &
     &AC2,DEP2,IMATDA,IMATRA,ABRBOT,KMESPC,SMESPC,UBOT,UFRIC,UX2,UY2,   &
     &IDCMIN,IDCMAX,IDDLOW,IDDTOP,IDWMIN,IDWMAX,ISSTOP,PLWNDA,PLWNDB,   &
     &PLWCAP,PLBTFR,PLWBRK,PLNL4S,PLNL4D,PLTRI,HS,ETOT,QBLOC,THETAW,HM, &
     &FPM,WIND10,ETOTW,GROWW,ALIMW,SMEBRK,SNLC1,DAL1,DAL2,DAL3,UE,SA1,  &
     &SA2,DA1C,DA1P,DA1M,DA2C,DA2P,DA2M,SFNL,DSNL,MEMNL4,WWINT,WWAWG,   &
     &WWSWG,CGO,USTAR,ZELEN,SPCDIR,ANYWND,DISSC0,DISSC1,GENC0,GENC1,    &
     &REDC0,REDC1,XIS,FRCOEF,IT,URSELL,ANYBIN,REFLSO)
              USE SWCOMM3
              USE SWCOMM4
              INTEGER(KIND=4) :: ITER
              INTEGER(KIND=4) :: IX
              INTEGER(KIND=4) :: IY
              INTEGER(KIND=4) :: SWPDIR
              REAL(KIND=4) :: KWAVE(MSC,10)
              REAL(KIND=4) :: SPCSIG(MSC)
              REAL(KIND=4) :: ECOS(MDC)
              REAL(KIND=4) :: ESIN(MDC)
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              REAL(KIND=4) :: DEP2(MCGRD)
              REAL(KIND=4) :: IMATDA(MDC,MSC)
              REAL(KIND=4) :: IMATRA(MDC,MSC)
              REAL(KIND=4) :: ABRBOT
              REAL(KIND=4) :: KMESPC
              REAL(KIND=4) :: SMESPC
              REAL(KIND=4) :: UBOT(MCGRD)
              REAL(KIND=4) :: UFRIC
              REAL(KIND=4) :: UX2(MCGRD)
              REAL(KIND=4) :: UY2(MCGRD)
              INTEGER(KIND=4) :: IDCMIN(MSC)
              INTEGER(KIND=4) :: IDCMAX(MSC)
              INTEGER(KIND=4) :: IDDLOW
              INTEGER(KIND=4) :: IDDTOP
              INTEGER(KIND=4) :: IDWMIN
              INTEGER(KIND=4) :: IDWMAX
              INTEGER(KIND=4) :: ISSTOP
              REAL(KIND=4) :: PLWNDA(MDC,MSC,NPTST)
              REAL(KIND=4) :: PLWNDB(MDC,MSC,NPTST)
              REAL(KIND=4) :: PLWCAP(MDC,MSC,NPTST)
              REAL(KIND=4) :: PLBTFR(MDC,MSC,NPTST)
              REAL(KIND=4) :: PLWBRK(MDC,MSC,NPTST)
              REAL(KIND=4) :: PLNL4S(MDC,MSC,NPTST)
              REAL(KIND=4) :: PLNL4D(MDC,MSC,NPTST)
              REAL(KIND=4) :: PLTRI(MDC,MSC,NPTST)
              REAL(KIND=4) :: HS
              REAL(KIND=4) :: ETOT
              REAL(KIND=4) :: QBLOC
              REAL(KIND=4) :: THETAW
              REAL(KIND=4) :: HM
              REAL(KIND=4) :: FPM
              REAL(KIND=4) :: WIND10
              REAL(KIND=4) :: ETOTW
              LOGICAL(KIND=4) :: GROWW(MDC,MSC)
              REAL(KIND=4) :: ALIMW(MDC,MSC)
              REAL(KIND=4) :: SMEBRK
              REAL(KIND=4) :: SNLC1
              REAL(KIND=4) :: DAL1
              REAL(KIND=4) :: DAL2
              REAL(KIND=4) :: DAL3
              REAL(KIND=4) :: UE(MSC4MI:MSC4MA,MDC4MI:MDC4MA)
              REAL(KIND=4) :: SA1(MSC4MI:MSC4MA,MDC4MI:MDC4MA)
              REAL(KIND=4) :: SA2(MSC4MI:MSC4MA,MDC4MI:MDC4MA)
              REAL(KIND=4) :: DA1C(MSC4MI:MSC4MA,MDC4MI:MDC4MA)
              REAL(KIND=4) :: DA1P(MSC4MI:MSC4MA,MDC4MI:MDC4MA)
              REAL(KIND=4) :: DA1M(MSC4MI:MSC4MA,MDC4MI:MDC4MA)
              REAL(KIND=4) :: DA2C(MSC4MI:MSC4MA,MDC4MI:MDC4MA)
              REAL(KIND=4) :: DA2P(MSC4MI:MSC4MA,MDC4MI:MDC4MA)
              REAL(KIND=4) :: DA2M(MSC4MI:MSC4MA,MDC4MI:MDC4MA)
              REAL(KIND=4) :: SFNL(MSC4MI:MSC4MA,MDC4MI:MDC4MA)
              REAL(KIND=4) :: DSNL(MSC4MI:MSC4MA,MDC4MI:MDC4MA)
              REAL(KIND=4) :: MEMNL4(MDC,MSC,MCGRD)
              INTEGER(KIND=4) :: WWINT(*)
              REAL(KIND=4) :: WWAWG(*)
              REAL(KIND=4) :: WWSWG(*)
              REAL(KIND=4) :: CGO(MSC,10)
              REAL(KIND=4) :: USTAR(MCGRD)
              REAL(KIND=4) :: ZELEN(MCGRD)
              REAL(KIND=4) :: SPCDIR(MDC,6)
              LOGICAL(KIND=4) :: ANYWND(MDC)
              REAL(KIND=4) :: DISSC0(1:MDC,1:MSC,1:3)
              REAL(KIND=4) :: DISSC1(1:MDC,1:MSC,1:3)
              REAL(KIND=4) :: GENC0(1:MDC,1:MSC,1:1)
              REAL(KIND=4) :: GENC1(1:MDC,1:MSC,1:1)
              REAL(KIND=4) :: REDC0(1:MDC,1:MSC,1:2)
              REAL(KIND=4) :: REDC1(1:MDC,1:MSC,1:2)
              REAL(KIND=4) :: XIS
              REAL(KIND=4) :: FRCOEF(MCGRD)
              INTEGER(KIND=4) :: IT
              REAL(KIND=4) :: URSELL(MCGRD)
              LOGICAL(KIND=4) :: ANYBIN(MDC,MSC)
              REAL(KIND=4) :: REFLSO(MDC,MSC)
            END SUBROUTINE SOURCE
          END INTERFACE 
        END MODULE SOURCE__genmod
