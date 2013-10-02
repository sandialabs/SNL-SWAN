        !COMPILER-GENERATED INTERFACE MODULE: Mon Apr 29 16:05:10 2013
        MODULE SWORDC__genmod
          INTERFACE 
            SUBROUTINE SWORDC(OUTI,OUTR,IVTYP,RTYPE,PSNAME,NVOQP,OQPROC,&
     &BKC,VOQR,OURQT,LOGACT)
              INTEGER(KIND=4) :: OUTI(*)
              REAL(KIND=4) :: OUTR(*)
              INTEGER(KIND=4) :: IVTYP(*)
              CHARACTER(*) :: RTYPE
              CHARACTER(*) :: PSNAME
              INTEGER(KIND=4) :: NVOQP
              LOGICAL(KIND=4) :: OQPROC(69)
              INTEGER(KIND=4) :: BKC
              INTEGER(KIND=4) :: VOQR(*)
              REAL(KIND=4) :: OURQT
              LOGICAL(KIND=4) :: LOGACT
            END SUBROUTINE SWORDC
          END INTERFACE 
        END MODULE SWORDC__genmod
