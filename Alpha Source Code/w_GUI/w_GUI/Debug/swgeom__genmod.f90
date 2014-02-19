        !COMPILER-GENERATED INTERFACE MODULE: Thu Dec 20 11:58:04 2012
        MODULE SWGEOM__genmod
          INTERFACE 
            SUBROUTINE SWGEOM(RDX,RDY,XCGRID,YCGRID,SWPDIR)
              USE SWCOMM3
              REAL(KIND=4) :: RDX(10)
              REAL(KIND=4) :: RDY(10)
              REAL(KIND=4) :: XCGRID(MXC,MYC)
              REAL(KIND=4) :: YCGRID(MXC,MYC)
              INTEGER(KIND=4) :: SWPDIR
            END SUBROUTINE SWGEOM
          END INTERFACE 
        END MODULE SWGEOM__genmod
