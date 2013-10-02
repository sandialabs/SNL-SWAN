        !COMPILER-GENERATED INTERFACE MODULE: Mon Apr 29 16:05:05 2013
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
