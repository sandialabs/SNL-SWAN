        !COMPILER-GENERATED INTERFACE MODULE: Wed Apr 24 17:03:41 2013
        MODULE ADDDIS__genmod
          INTERFACE 
            SUBROUTINE ADDDIS(DISSXY,LEAKXY,AC2,ANYBIN,DISC0,DISC1,GENC0&
     &,GENC1,REDC0,REDC1,TRAC0,TRAC1,IMATLA,IMATUA,IMAT5L,IMAT6U,DSXBOT,&
     &DSXSRF,DSXWCP,GSXWND,GENRXY,RSXQUA,RSXTRI,REDSXY,TSXGEO,TSXSPT,   &
     &TSXSPS,TRANXY,LEAKC1,RADSXY,SPCSIG)
              USE SWCOMM3
              REAL(KIND=4) :: DISSXY(MCGRD)
              REAL(KIND=4) :: LEAKXY(MCGRD)
              REAL(KIND=4) :: AC2(MDC,MSC,MCGRD)
              LOGICAL(KIND=4) :: ANYBIN(MDC,MSC)
              REAL(KIND=4) :: DISC0(1:MDC,1:MSC,1:3)
              REAL(KIND=4) :: DISC1(1:MDC,1:MSC,1:3)
              REAL(KIND=4) :: GENC0(1:MDC,1:MSC,1:1)
              REAL(KIND=4) :: GENC1(1:MDC,1:MSC,1:1)
              REAL(KIND=4) :: REDC0(1:MDC,1:MSC,1:2)
              REAL(KIND=4) :: REDC1(1:MDC,1:MSC,1:2)
              REAL(KIND=4) :: TRAC0(1:MDC,1:MSC,1:3)
              REAL(KIND=4) :: TRAC1(1:MDC,1:MSC,1:3)
              REAL(KIND=4) :: IMATLA(MDC,MSC)
              REAL(KIND=4) :: IMATUA(MDC,MSC)
              REAL(KIND=4) :: IMAT5L(MDC,MSC)
              REAL(KIND=4) :: IMAT6U(MDC,MSC)
              REAL(KIND=4) :: DSXBOT(MCGRD)
              REAL(KIND=4) :: DSXSRF(MCGRD)
              REAL(KIND=4) :: DSXWCP(MCGRD)
              REAL(KIND=4) :: GSXWND(MCGRD)
              REAL(KIND=4) :: GENRXY(MCGRD)
              REAL(KIND=4) :: RSXQUA(MCGRD)
              REAL(KIND=4) :: RSXTRI(MCGRD)
              REAL(KIND=4) :: REDSXY(MCGRD)
              REAL(KIND=4) :: TSXGEO(MCGRD)
              REAL(KIND=4) :: TSXSPT(MCGRD)
              REAL(KIND=4) :: TSXSPS(MCGRD)
              REAL(KIND=4) :: TRANXY(MCGRD)
              REAL(KIND=4) :: LEAKC1(MDC,MSC)
              REAL(KIND=4) :: RADSXY(MCGRD)
              REAL(KIND=4) :: SPCSIG(MSC)
            END SUBROUTINE ADDDIS
          END INTERFACE 
        END MODULE ADDDIS__genmod
