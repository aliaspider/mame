###########################################################################
#
#   mame.mak
#
#   MAME target makefile
#
#   Copyright Nicola Salmoria and the MAME Team.
#   Visit http://mamedev.org for licensing and usage restrictions.
#
###########################################################################

ifeq ($(TARGET),mame)
# In order to keep dependencies reasonable, we exclude objects in the base of
# $(SRC)/emu, as well as all the OSD objects and anything in the $(OBJ) tree
depend: maketree $(MAKEDEP_TARGET)
	@echo Rebuilding depend_emu.mak...
	$(MAKEDEP) -I. $(INCPATH) -I$(SRC)/emu -X$(SRC)/osd/... -X$(OBJ)/... $(SRC)/emu > depend_emu.mak
	@echo Rebuilding depend_$(TARGET).mak...
	$(MAKEDEP) -I. $(INCPATH) -X$(SRC)/emu -X$(SRC)/osd/... -X$(OBJ)/... $(SRC)/$(TARGET) > depend_$(TARGET).mak
endif

MAMESRC = $(SRC)/mame
MAMEOBJ = $(OBJ)/mame

AUDIO = $(MAMEOBJ)/audio
DRIVERS = $(MAMEOBJ)/drivers
LAYOUT = $(MAMEOBJ)/layout
MACHINE = $(MAMEOBJ)/machine
VIDEO = $(MAMEOBJ)/video

OBJDIRS += \
	$(AUDIO) \
	$(DRIVERS) \
	$(LAYOUT) \
	$(MACHINE) \
	$(VIDEO) \


#-------------------------------------------------
# specify available CPU cores
#-------------------------------------------------

CPUS += Z80
CPUS += S2650

#-------------------------------------------------
# specify available sound cores
#-------------------------------------------------

SOUNDS += NAMCO
#SOUNDS += NAMCO_15XX
#SOUNDS += NAMCO_CUS30
#SOUNDS += NAMCO_52XX
#SOUNDS += NAMCO_63701X
SOUNDS += SN76496
SOUNDS += AY8910

#-------------------------------------------------
# specify available video cores
#-------------------------------------------------
#-------------------------------------------------
# specify available machine cores
#-------------------------------------------------


#-------------------------------------------------
# specify available bus cores
#-------------------------------------------------


#-------------------------------------------------
# this is the list of driver libraries that
# comprise MAME plus mamedriv.o which contains
# the list of drivers
#-------------------------------------------------

DRVLIBS += 	$(MAMEOBJ)/pacman.a

#-------------------------------------------------
# manufacturer-specific groupings for drivers
#-------------------------------------------------

$(MAMEOBJ)/pacman.a: \
	$(DRIVERS)/jrpacman.o \
	$(DRIVERS)/pacman.o $(VIDEO)/pacman.o $(MACHINE)/acitya.o $(MACHINE)/jumpshot.o $(MACHINE)/pacplus.o $(MACHINE)/theglobp.o \
	$(DRIVERS)/pengo.o \

