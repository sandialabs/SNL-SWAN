##############################################################################
# IA32_Intel/EM64T_Intel:	Intel Pentium with MS Windows using Intel compiler 9.1.
##############################################################################
F90_SER = ifort
F90_OMP = ifort
F90_MPI = ifort
FLAGS_OPT = /O2
FLAGS_MSC = /assume:byterecl /traceback /nowarn /nologo
FLAGS90_MSC = $(FLAGS_MSC)
FLAGS_SER =
FLAGS_OMP = /Qopenmp
FLAGS_MPI =
INCS_SER =
INCS_OMP =
INCS_MPI = /include:"c:\progra~1\MPICH\SDK\include"
LIBS_SER =
LIBS_OMP =
LIBS_MPI = c:\progra~1\MPICH\SDK\lib\mpe.lib c:\progra~1\MPICH\SDK\lib\mpich.lib
OUT = /exe:
EXTO = obj
MAKE = nmake
RM = del
MV = move
CP = copy
MOD = /module:
arch = win
swch = -dos -impi -cvis
