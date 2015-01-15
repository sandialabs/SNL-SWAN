##############################################################################
# IA32_Intel/EM64T_Intel:	Intel Pentium with MS Windows using Intel compiler 11.
##############################################################################
F90_SER = ifort
F90_OMP = ifort
F90_MPI = ifort
FLAGS_OPT = /O2
FLAGS_MSC = /assume:byterecl /traceback /nowarn /nologo /Qdiag-disable:8290 /Qdiag-disable:8291 /Qdiag-disable:8293
FLAGS90_MSC = $(FLAGS_MSC)
FLAGS_SER =
FLAGS_OMP = /Qopenmp /Qopenmp-link:static
FLAGS_MPI =
#NETCDFROOT = C:\PROGRA~2\netcdf
!IF DEFINED(NETCDFROOT)
INCS_SER = /include:$(NETCDFROOT)
INCS_OMP = /include:$(NETCDFROOT)
INCS_MPI = /include:"C:\PROGRA~1\MPICH2\include" /include:$(NETCDFROOT)
LIBSC = /link /NODEFAULTLIB:MSVCRT.lib /NODEFAULTLIB:LIBC.lib
LIBS_SER = $(NETCDFROOT)\f90_netcdf.lib $(NETCDFROOT)\f77_netcdf.lib $(NETCDFROOT)\netcdf.lib $(LIBSC)
LIBS_OMP = $(NETCDFROOT)\f90_netcdf.lib $(NETCDFROOT)\f77_netcdf.lib $(NETCDFROOT)\netcdf.lib $(LIBSC)
LIBS_MPI = C:\PROGRA~1\MPICH2\lib\fmpich2.lib $(NETCDFROOT)\f90_netcdf.lib $(NETCDFROOT)\f77_netcdf.lib $(NETCDFROOT)\netcdf.lib $(LIBSC)
NCF_OBJS = nctablemd.obj agioncmd.obj swn_outnc.obj
!ELSE
INCS_SER =
INCS_OMP =
INCS_MPI = /include:"C:\PROGRA~1\MPICH2\include"
LIBS_SER =
LIBS_OMP =
LIBS_MPI = C:\PROGRA~1\MPICH2\lib\fmpich2.lib
NCF_OBJS =
!ENDIF
O_DIR =
OUT = /exe:
EXTO = obj
MAKE = nmake
RM = del
!IF DEFINED(NETCDFROOT)
swch = -dos -impi -cvis -netcdf
!ELSE
swch = -dos -impi -cvis
!ENDIF
MV = move
CP = copy
MOD = /module:
arch = win
