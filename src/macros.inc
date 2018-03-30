##############################################################################
# IA32_Intel/EM64T_Intel:	Intel Pentium with MS Windows using Intel compiler 17.
##############################################################################
F90_SER = ifort
F90_OMP = ifort
F90_MPI = ifort
FLAGS_OPT = /O2
FLAGS_MSC = /assume:byterecl /traceback /nowarn /nologo /Qdiag-disable:8290 /Qdiag-disable:8291 /Qdiag-disable:8293
FLAGS90_MSC = $(FLAGS_MSC)
FLAGS_DYN =
FLAGS_SER =
FLAGS_OMP = /Qopenmp
FLAGS_MPI =
INCS_SER =
INCS_OMP =
INCS_MPI = /include:"C:\PROGRA~1\MPICH2\include"
LIBS_SER =
LIBS_OMP =
LIBS_MPI = C:\PROGRA~1\MPICH2\lib\fmpich2.lib
O_DIR =
OUT = /exe:
EXTO = obj
MAKE = nmake
RM = del
swch = -dos -impi -cvis
