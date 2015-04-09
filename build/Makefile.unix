# ------------------------------------------------------------------------------
#                      Makefile for building SWAN program and documentation
# ------------------------------------------------------------------------------
#
# Before compilation, type "make config" first!
#
# To compile the serial executable type "make ser"
# To compile the OpenMP executable type "make omp"
# To compile the MPI executable type "make mpi"
# To compile the PunSWAN executable "make punswan"
#
# To remove compiled objects and modules: type "make clean"
#
# To remove compiled objects, modules and executable: type "make clobber"
#
# To compile the SWAN documentation type "make doc"
#
# To remove the PDF and HTML documents type "make cleandoc"
#
# Please do not change anything below, unless you're very sure what you're doing
# ------------------------------------------------------------------------------

include macros.inc

SWAN_EXE = swan.exe

SRCDIR=../src
BINDIR=../bin

#$(OBSDIR)/$(NCF_OBJS)
SWAN_OBJS = \
$(OBSDIR)/swmod1.$(EXTO) \
$(OBSDIR)/swmod2.$(EXTO) \
$(OBSDIR)/m_constants.$(EXTO) \
$(OBSDIR)/m_fileio.$(EXTO) \
$(OBSDIR)/serv_xnl4v5.$(EXTO) \
$(OBSDIR)/mod_xnl4v5.$(EXTO) \
$(OBSDIR)/SwanGriddata.$(EXTO) \
$(OBSDIR)/SwanGridobjects.$(EXTO) \
$(OBSDIR)/SwanCompdata.$(EXTO) \
$(OBSDIR)/swanmain.$(EXTO) \
$(OBSDIR)/swanpre1.$(EXTO) \
$(OBSDIR)/swanpre2.$(EXTO) \
$(OBSDIR)/swancom1.$(EXTO) \
$(OBSDIR)/swancom2.$(EXTO) \
$(OBSDIR)/swancom3.$(EXTO) \
$(OBSDIR)/swancom4.$(EXTO) \
$(OBSDIR)/swancom5.$(EXTO) \
$(OBSDIR)/swanout1.$(EXTO) \
$(OBSDIR)/swanout2.$(EXTO) \
$(OBSDIR)/swanser.$(EXTO) \
$(OBSDIR)/swanparll.$(EXTO) \
$(OBSDIR)/SwanReadGrid.$(EXTO) \
$(OBSDIR)/SwanReadADCGrid.$(EXTO) \
$(OBSDIR)/SwanReadTriangleGrid.$(EXTO) \
$(OBSDIR)/SwanReadEasymeshGrid.$(EXTO) \
$(OBSDIR)/SwanInitCompGrid.$(EXTO) \
$(OBSDIR)/SwanCheckGrid.$(EXTO) \
$(OBSDIR)/SwanCreateEdges.$(EXTO) \
$(OBSDIR)/SwanGridTopology.$(EXTO) \
$(OBSDIR)/SwanGridVert.$(EXTO) \
$(OBSDIR)/SwanGridCell.$(EXTO) \
$(OBSDIR)/SwanGridFace.$(EXTO) \
$(OBSDIR)/SwanPrintGridInfo.$(EXTO) \
$(OBSDIR)/SwanFindPoint.$(EXTO) \
$(OBSDIR)/SwanPointinMesh.$(EXTO) \
$(OBSDIR)/SwanBpntlist.$(EXTO) \
$(OBSDIR)/SwanPrepComp.$(EXTO) \
$(OBSDIR)/SwanVertlist.$(EXTO) \
$(OBSDIR)/SwanCompUnstruc.$(EXTO) \
$(OBSDIR)/SwanDispParm.$(EXTO) \
$(OBSDIR)/SwanPropvelX.$(EXTO) \
$(OBSDIR)/SwanSweepSel.$(EXTO) \
$(OBSDIR)/SwanPropvelS.$(EXTO) \
$(OBSDIR)/SwanTranspAc.$(EXTO) \
$(OBSDIR)/SwanTranspX.$(EXTO) \
$(OBSDIR)/SwanDiffPar.$(EXTO) \
$(OBSDIR)/SwanGSECorr.$(EXTO) \
$(OBSDIR)/SwanInterpolatePoint.$(EXTO) \
$(OBSDIR)/SwanInterpolateAc.$(EXTO) \
$(OBSDIR)/SwanInterpolateOutput.$(EXTO) \
$(OBSDIR)/SwanConvAccur.$(EXTO) \
$(OBSDIR)/SwanConvStopc.$(EXTO) \
$(OBSDIR)/SwanThreadBounds.$(EXTO) \
$(OBSDIR)/SwanFindObstacles.$(EXTO) \
$(OBSDIR)/SwanCrossObstacle.$(EXTO) \
$(OBSDIR)/SwanComputeForce.$(EXTO) \
$(OBSDIR)/SwanIntgratSpc.$(EXTO) \
$(OBSDIR)/SwanBndStruc.$(EXTO) \
$(OBSDIR)/SwanReadfort18.$(EXTO) \
$(OBSDIR)/SwanPunCollect.$(EXTO) \
$(OBSDIR)/SwanSumOverNodes.$(EXTO) \
$(OBSDIR)/SwanMinOverNodes.$(EXTO) \
$(OBSDIR)/SwanMaxOverNodes.$(EXTO) \
$(OBSDIR)/ocpids.$(EXTO) \
$(OBSDIR)/ocpcre.$(EXTO) \
$(OBSDIR)/ocpmix.$(EXTO) \
$(OBSDIR)/Pincident.$(EXTO) \
$(OBSDIR)/Bivariate_1.$(EXTO) \

HCAT_EXE = hcat.exe
HCAT_OBJS = swanhcat.$(EXTO)

MSG_OBJS = \
$(O_DIR)mkdir.$(EXTO) \
$(O_DIR)sizes.$(EXTO) \
$(O_DIR)global.$(EXTO) \
$(O_DIR)global_3dvs.$(EXTO) \
$(O_DIR)version.$(EXTO) \
$(O_DIR)messenger.$(EXTO)

UNHCAT_EXE = unhcat.exe
UNHCAT_OBJS = HottifySWAN.$(EXTO)

.SUFFIXES: .f .for .f90

.PHONY: help clean clobber

help:
	@echo "This Makefile supports the following:"
	@echo "make config    -- makes machine-dependent macros include file"
	@echo "make ser       -- makes the serial $(SWAN_EXE) executable"
	@echo "make omp       -- makes the OpenMP $(SWAN_EXE) executable"
	@echo "make mpi       -- makes the    MPI $(SWAN_EXE) executable"
	@echo "make punswan   -- makes the parallel un$(SWAN_EXE) executable"
	@echo "make doc       -- makes the SWAN documentation (PDF)"
	@echo "make clean     -- removes compiled objects and modules"
	@echo "make clobber   -- removes compiled objects, modules and $(SWAN_EXE)"
	@echo "make cleandoc  -- removes all SWAN documents"

config:
	@perl platform.pl

install:
	@perl platform.pl

ser:
	@perl switch.pl $(swch) $(SRCDIR)/*.ftn $(SRCDIR)/*.ftn90
	$(MAKE) FOR=$(F90_SER) FFLAGS="$(FLAGS_OPT) $(FLAGS_MSC) $(FLAGS_SER)" \
	        FFLAGS90="$(FLAGS_OPT) $(FLAGS90_MSC) $(FLAGS_SER)" \
                INCS="$(INCS_SER)" LIBS="$(LIBS_SER)" OBSDIR=obs-$(F90_SER)-$(arch)-ser \
		EXENAME="snl-swan-$(arch)-ser-$(F90_SER).exe" $(SWAN_EXE)
#	$(MAKE) hcat

omp:
	@perl switch.pl $(swch) $(SRCDIR)/*.ftn $(SRCDIR)/*.ftn90
	@$(MAKE) FOR=$(F90_OMP) FFLAGS="$(FLAGS_OPT) $(FLAGS_MSC) $(FLAGS_OMP)" \
	        FFLAGS90="$(FLAGS_OPT) $(FLAGS90_MSC) $(FLAGS_OMP)" \
                INCS="$(INCS_OMP)" LIBS="$(LIBS_OMP)" OBSDIR=obs-$(F90_OMP)-$(arch)-omp \
		EXENAME="snl-swan-$(arch)-omp-$(F90_OMP).exe" $(SWAN_EXE)
#	$(MAKE) hcat

mpi:
	@perl switch.pl $(swch) -mpi $(SRCDIR)/*.ftn $(SRCDIR)/*.ftn90
	$(MAKE) FOR=$(F90_MPI) FFLAGS="$(FLAGS_OPT) $(FLAGS_MSC) $(FLAGS_MPI)" \
	        FFLAGS90="$(FLAGS_OPT) $(FLAGS90_MSC) $(FLAGS_MPI)" \
                INCS="$(INCS_MPI)" LIBS="$(LIBS_MPI)" OBSDIR=obs-$(F90_MPI)-$(arch)-mpi \
		EXENAME="snl-swan-$(arch)-mpi-$(F90_MPI).exe" $(SWAN_EXE)
#	$(MAKE) hcat

punswan:
	@perl switch.pl $(swch) -pun $(SRCDIR)/*.ftn $(SRCDIR)/*.ftn90
	$(MAKE) FOR=$(F90_MPI) FFLAGS="$(FLAGS_OPT) $(FLAGS_MSC) $(FLAGS_MPI)" \
                FFLAGS90="$(FLAGS_OPT) $(FLAGS90_MSC) $(FLAGS_MPI)" \
                INCS="$(INCS_MPI) -I$(O_DIR)" LIBS="$(LIBS_MPI)" \
                OBJS="$(MSG_OBJS) $(SWAN_OBJS)" $(SWAN_EXE)
#	$(MAKE) unhcat

hcat:
	@perl switch.pl $(swch) $(SRCDIR)/swanhcat.ftn
	$(MAKE) FOR=$(F90_SER) FFLAGS="$(FLAGS_OPT) $(FLAGS_MSC) $(FLAGS_SER)" \
	        FFLAGS90="$(FLAGS_OPT) $(FLAGS90_MSC) $(FLAGS_SER)" $(HCAT_EXE)

unhcat:
	@perl switch.pl $(swch) $(SRCDIR)/HottifySWAN.ftn90
	$(MAKE) FOR=$(F90_SER) FFLAGS="$(FLAGS_OPT) $(FLAGS_MSC) $(FLAGS_SER)" \
	        FFLAGS90="$(FLAGS_OPT) $(FLAGS90_MSC) $(FLAGS_SER)" $(UNHCAT_EXE)

doc:
	$(MAKE) -f Makefile.latex TARGET=swanuse doc
	$(MAKE) -f Makefile.latex TARGET=swantech doc
	$(MAKE) -f Makefile.latex TARGET=swanimp doc
	$(MAKE) -f Makefile.latex TARGET=swanpgr doc
	$(MAKE) -f Makefile.latex TARGET=latexfordummies doc

$(HCAT_EXE): $(HCAT_OBJS)
	$(FOR) $(HCAT_OBJS) $(FFLAGS) $(OUT)$(HCAT_EXE)

$(UNHCAT_EXE): $(UNHCAT_OBJS)
	$(FOR) $(UNHCAT_OBJS) $(FFLAGS) $(OUT)$(UNHCAT_EXE)

$(SWAN_EXE): dircheck $(SWAN_OBJS)
	@echo "Making" $(SWAN_EXE) " from " $(SWAN_OBJS)
	@$(FOR) $(SWAN_OBJS) $(FFLAGS) $(OUT)$(OBSDIR)/$(SWAN_EXE) $(INCS) $(LIBS)
	$(CP) $(OBSDIR)/$(SWAN_EXE) $(BINDIR)/$(EXENAME)

dircheck:
	@echo $(OBSDIR) $(SRCDIR)
	-@mkdir $(OBSDIR)

# dependencies
$(OBSDIR)/ocpcre.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) 
$(OBSDIR)/ocpids.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/swmod2.$(EXTO) 
$(OBSDIR)/ocpmix.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/swmod2.$(EXTO) 
$(OBSDIR)/swancom1.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/swmod2.$(EXTO) $(OBSDIR)/m_constants.$(EXTO) $(OBSDIR)/m_fileio.$(EXTO) $(OBSDIR)/mod_xnl4v5.$(EXTO) 
$(OBSDIR)/swancom2.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/swmod2.$(EXTO) 
$(OBSDIR)/swancom3.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) 
$(OBSDIR)/swancom4.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/swmod2.$(EXTO) $(OBSDIR)/mod_xnl4v5.$(EXTO) $(OBSDIR)/serv_xnl4v5.$(EXTO) 
$(OBSDIR)/swancom5.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/swmod2.$(EXTO) 
$(OBSDIR)/swanmain.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/swmod2.$(EXTO) $(OBSDIR)/SwanCompdata.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) 
$(OBSDIR)/swanout1.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/swmod2.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) $(OBSDIR)/SwanGridobjects.$(EXTO) 
$(OBSDIR)/swanout2.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/swmod2.$(EXTO) 
$(OBSDIR)/swanparll.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/swmod2.$(EXTO) 
$(OBSDIR)/swanpre1.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/swmod2.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) 
$(OBSDIR)/swanpre2.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/swmod2.$(EXTO) $(OBSDIR)/SwanCompdata.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) $(OBSDIR)/SwanGridobjects.$(EXTO) 
$(OBSDIR)/swanser.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/swmod2.$(EXTO) $(OBSDIR)/SwanCompdata.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) 
$(OBSDIR)/swmod2.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) 
$(OBSDIR)/agioncmd.$(EXTO):$(OBSDIR)/nctablemd.$(EXTO) 
$(OBSDIR)/couple2adcirc.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/swmod2.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) $(OBSDIR)/SwanGridobjects.$(EXTO) 
$(OBSDIR)/HottifySWAN.$(EXTO):$(OBSDIR)/swmod2.$(EXTO) $(OBSDIR)/agioncmd.$(EXTO) $(OBSDIR)/HottifySWAN.$(EXTO) $(OBSDIR)/mod_xnl4v5.$(EXTO) $(OBSDIR)/SwanCompdata.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) 
$(OBSDIR)/m_constants.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) 
$(OBSDIR)/m_fileio.$(EXTO):$(OBSDIR)/swmod2.$(EXTO) 
$(OBSDIR)/mod_xnl4v5.$(EXTO):$(OBSDIR)/m_constants.$(EXTO) $(OBSDIR)/m_fileio.$(EXTO) $(OBSDIR)/serv_xnl4v5.$(EXTO) 
$(OBSDIR)/Pincident.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) 
$(OBSDIR)/SwanBndStruc.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/swmod2.$(EXTO) 
$(OBSDIR)/SwanBpntlist.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/swmod2.$(EXTO) $(OBSDIR)/SwanCompdata.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) $(OBSDIR)/SwanGridobjects.$(EXTO) 
$(OBSDIR)/SwanCheckGrid.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) 
$(OBSDIR)/SwanCompdata.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) 
$(OBSDIR)/SwanCompUnstruc.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/swmod2.$(EXTO) $(OBSDIR)/SwanCompdata.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) $(OBSDIR)/SwanGridobjects.$(EXTO) 
$(OBSDIR)/SwanComputeForce.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) $(OBSDIR)/SwanGridobjects.$(EXTO) 
$(OBSDIR)/SwanConvAccur.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) $(OBSDIR)/SwanGridobjects.$(EXTO) 
$(OBSDIR)/SwanConvStopc.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) $(OBSDIR)/SwanGridobjects.$(EXTO) 
$(OBSDIR)/SwanCreateEdges.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) 
$(OBSDIR)/SwanCrossObstacle.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) 
$(OBSDIR)/SwanDiffPar.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/swmod2.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) $(OBSDIR)/SwanGridobjects.$(EXTO) 
$(OBSDIR)/SwanDispParm.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/SwanCompdata.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) 
$(OBSDIR)/SwanFindObstacles.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/swmod2.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) $(OBSDIR)/SwanGridobjects.$(EXTO) 
$(OBSDIR)/SwanFindPoint.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) $(OBSDIR)/SwanGridobjects.$(EXTO) 
$(OBSDIR)/SwanGridCell.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/SwanGridobjects.$(EXTO) 
$(OBSDIR)/SwanGridFace.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/SwanGridobjects.$(EXTO) 
$(OBSDIR)/SwanGridTopology.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) $(OBSDIR)/SwanGridobjects.$(EXTO) 
$(OBSDIR)/SwanGridVert.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/SwanGridobjects.$(EXTO) 
$(OBSDIR)/SwanGSECorr.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/SwanCompdata.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) $(OBSDIR)/SwanGridobjects.$(EXTO) 
$(OBSDIR)/SwanInitCompGrid.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/swmod2.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) 
$(OBSDIR)/SwanInterpolateAc.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/swmod2.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) $(OBSDIR)/SwanGridobjects.$(EXTO) 
$(OBSDIR)/SwanInterpolateOutput.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/swmod2.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) $(OBSDIR)/SwanGridobjects.$(EXTO) 
$(OBSDIR)/SwanInterpolatePoint.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) $(OBSDIR)/SwanGridobjects.$(EXTO) 
$(OBSDIR)/SwanIntgratSpc.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) 
$(OBSDIR)/SwanMaxOverNodes.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) 
$(OBSDIR)/SwanMinOverNodes.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) 
$(OBSDIR)/SwanPointinMesh.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) $(OBSDIR)/SwanGridobjects.$(EXTO) 
$(OBSDIR)/SwanPrepComp.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) 
$(OBSDIR)/SwanPrintGridInfo.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) $(OBSDIR)/SwanGridobjects.$(EXTO) 
$(OBSDIR)/SwanPropvelS.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/swmod2.$(EXTO) $(OBSDIR)/SwanCompdata.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) $(OBSDIR)/SwanGridobjects.$(EXTO) 
$(OBSDIR)/SwanPropvelX.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/swmod2.$(EXTO) $(OBSDIR)/SwanCompdata.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) 
$(OBSDIR)/SwanReadADCGrid.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/swmod2.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) 
$(OBSDIR)/SwanReadEasymeshGrid.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) 
$(OBSDIR)/SwanReadGrid.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) 
$(OBSDIR)/SwanReadTriangleGrid.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) 
$(OBSDIR)/SwanSumOverNodes.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) 
$(OBSDIR)/SwanSweepSel.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) 
$(OBSDIR)/SwanThreadBounds.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/SwanCompdata.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) $(OBSDIR)/SwanGridobjects.$(EXTO) 
$(OBSDIR)/SwanTranspAc.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) 
$(OBSDIR)/SwanTranspX.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/SwanCompdata.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) 
$(OBSDIR)/SwanVertlist.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/swmod2.$(EXTO) $(OBSDIR)/SwanCompdata.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) $(OBSDIR)/SwanGridobjects.$(EXTO) 
$(OBSDIR)/swn_outnc.$(EXTO):$(OBSDIR)/swmod1.$(EXTO) $(OBSDIR)/swmod2.$(EXTO) $(OBSDIR)/agioncmd.$(EXTO) $(OBSDIR)/nctablemd.$(EXTO) $(OBSDIR)/SwanGriddata.$(EXTO) 


$(OBSDIR)/%.o:%.f
	$(FOR) $< -c $(FFLAGS) $(INCS) $(MOD)$(OBSDIR) -o $@

$(OBSDIR)/%.o:%.f90
	$(FOR) $< -c $(FFLAGS90) $(INCS) $(MOD)$(OBSDIR) -o $@

$(OBSDIR)/%.obj:%.for
	$(FOR) $< -c $(FFLAGS) $(INCS) $(MOD)$(OBSDIR) -o $@

$(OBSDIR)/%.obj:%.f90
	$(FOR) $< -c $(FFLAGS90) $(INCS) $(MOD)$(OBSDIR) -o $@

clean:
	$(RM) *.$(EXTO) *.mod

clobber:
	$(RM) *.$(EXTO) *.mod *.f *.for *.f90 $(SWAN_EXE) $(HCAT_EXE) $(UNHCAT_EXE)

allclean:
	$(RM) *.$(EXTO) *.mod *.f *.for *.f90 $(SWAN_EXE) $(HCAT_EXE) $(UNHCAT_EXE)

cleandoc:
	$(MAKE) -f Makefile.latex TARGET=swanuse cleandoc
	$(MAKE) -f Makefile.latex TARGET=swantech cleandoc
	$(MAKE) -f Makefile.latex TARGET=swanimp cleandoc
	$(MAKE) -f Makefile.latex TARGET=swanpgr cleandoc
	$(MAKE) -f Makefile.latex TARGET=latexfordummies cleandoc
