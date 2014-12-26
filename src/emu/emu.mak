###########################################################################
#
#   emu.mak
#
#   MAME emulation core makefile
#
#   Copyright Nicola Salmoria and the MAME Team.
#   Visit http://mamedev.org for licensing and usage restrictions.
#
###########################################################################


EMUSRC = $(SRC)/emu
EMUOBJ = $(OBJ)/emu

EMUAUDIO = $(EMUOBJ)/audio
EMUBUS = $(EMUOBJ)/bus
EMUDRIVERS = $(EMUOBJ)/drivers
EMULAYOUT = $(EMUOBJ)/layout
EMUMACHINE = $(EMUOBJ)/machine
EMUIMAGEDEV = $(EMUOBJ)/imagedev
EMUVIDEO = $(EMUOBJ)/video

OBJDIRS += \
	$(EMUOBJ)/cpu \
	$(EMUOBJ)/sound \
	$(EMUOBJ)/debug \
	$(EMUOBJ)/audio \
	$(EMUOBJ)/bus \
	$(EMUOBJ)/drivers \
	$(EMUOBJ)/machine \
	$(EMUOBJ)/layout \
	$(EMUOBJ)/imagedev \
	$(EMUOBJ)/ui \
	$(EMUOBJ)/video \

OSDSRC = $(SRC)/osd
OSDOBJ = $(OBJ)/osd

OBJDIRS += \
	$(OSDOBJ) \
	$(OSDOBJ)/modules \
	$(OSDOBJ)/modules/sound \
	$(OSDOBJ)/modules/debugger \


#-------------------------------------------------
# emulator core objects
#-------------------------------------------------

EMUOBJS  = $(EMUOBJ)/hashfile.o
EMUOBJS += $(EMUOBJ)/addrmap.o
EMUOBJS += $(EMUOBJ)/attotime.o
EMUOBJS += $(EMUOBJ)/audit.o
#EMUOBJS += $(EMUOBJ)/cheat.o
EMUOBJS += $(EMUOBJ)/clifront.o
EMUOBJS += $(EMUOBJ)/config.o
EMUOBJS += $(EMUOBJ)/crsshair.o
#EMUOBJS += $(EMUOBJ)/debugger.o
EMUOBJS += $(EMUOBJ)/devdelegate.o
EMUOBJS += $(EMUOBJ)/devcb.o
EMUOBJS += $(EMUOBJ)/devcpu.o
EMUOBJS += $(EMUOBJ)/devfind.o
EMUOBJS += $(EMUOBJ)/device.o
EMUOBJS += $(EMUOBJ)/didisasm.o
EMUOBJS += $(EMUOBJ)/diexec.o
EMUOBJS += $(EMUOBJ)/digfx.o
EMUOBJS += $(EMUOBJ)/diimage.o
EMUOBJS += $(EMUOBJ)/dimemory.o
#EMUOBJS += $(EMUOBJ)/dinetwork.o
EMUOBJS += $(EMUOBJ)/dinvram.o
EMUOBJS += $(EMUOBJ)/dioutput.o
EMUOBJS += $(EMUOBJ)/dirtc.o
EMUOBJS += $(EMUOBJ)/diserial.o
EMUOBJS += $(EMUOBJ)/dislot.o
EMUOBJS += $(EMUOBJ)/disound.o
EMUOBJS += $(EMUOBJ)/dispatch.o
EMUOBJS += $(EMUOBJ)/distate.o
EMUOBJS += $(EMUOBJ)/divideo.o
EMUOBJS += $(EMUOBJ)/drawgfx.o
EMUOBJS += $(EMUOBJ)/driver.o
EMUOBJS += $(EMUOBJ)/drivenum.o
EMUOBJS += $(EMUOBJ)/emualloc.o
EMUOBJS += $(EMUOBJ)/emucore.o
EMUOBJS += $(EMUOBJ)/emuopts.o
EMUOBJS += $(EMUOBJ)/emupal.o
EMUOBJS += $(EMUOBJ)/fileio.o
EMUOBJS += $(EMUOBJ)/hash.o
EMUOBJS += $(EMUOBJ)/image.o
EMUOBJS += $(EMUOBJ)/info.o
EMUOBJS += $(EMUOBJ)/input.o
EMUOBJS += $(EMUOBJ)/ioport.o
EMUOBJS += $(EMUOBJ)/mame.o
EMUOBJS += $(EMUOBJ)/machine.o
EMUOBJS += $(EMUOBJ)/mconfig.o
EMUOBJS += $(EMUOBJ)/memarray.o
EMUOBJS += $(EMUOBJ)/memory.o
#EMUOBJS += $(EMUOBJ)/network.o
EMUOBJS += $(EMUOBJ)/output.o
EMUOBJS += $(EMUOBJ)/render.o
#EMUOBJS += $(EMUOBJ)/rendfont.o
#EMUOBJS += $(EMUOBJ)/rendlay.o
EMUOBJS += $(EMUOBJ)/rendutil.o
EMUOBJS += $(EMUOBJ)/romload.o
EMUOBJS += $(EMUOBJ)/save.o
EMUOBJS += $(EMUOBJ)/schedule.o
EMUOBJS += $(EMUOBJ)/screen.o
EMUOBJS += $(EMUOBJ)/softlist.o
EMUOBJS += $(EMUOBJ)/sound.o
EMUOBJS += $(EMUOBJ)/speaker.o
EMUOBJS += $(EMUOBJ)/sprite.o
EMUOBJS += $(EMUOBJ)/tilemap.o
EMUOBJS += $(EMUOBJ)/timer.o
#EMUOBJS += $(EMUOBJ)/uiinput.o
#EMUOBJS += $(EMUOBJ)/ui/ui.o
#EMUOBJS += $(EMUOBJ)/ui/swlist.o
#EMUOBJS += $(EMUOBJ)/ui/menu.o
#EMUOBJS += $(EMUOBJ)/ui/mainmenu.o
#EMUOBJS += $(EMUOBJ)/ui/miscmenu.o
#EMUOBJS += $(EMUOBJ)/ui/selgame.o
#EMUOBJS += $(EMUOBJ)/ui/filemngr.o
#EMUOBJS += $(EMUOBJ)/ui/filesel.o
#EMUOBJS += $(EMUOBJ)/ui/imgcntrl.o
#EMUOBJS += $(EMUOBJ)/ui/imginfo.o
#EMUOBJS += $(EMUOBJ)/ui/barcode.o
#EMUOBJS += $(EMUOBJ)/ui/tapectrl.o
#EMUOBJS += $(EMUOBJ)/ui/viewgfx.o
EMUOBJS += $(EMUOBJ)/validity.o
EMUOBJS += $(EMUOBJ)/video.o
#EMUOBJS += $(EMUOBJ)/debug/debugcmd.o
#EMUOBJS += $(EMUOBJ)/debug/debugcon.o
#EMUOBJS += $(EMUOBJ)/debug/debugcpu.o
#EMUOBJS += $(EMUOBJ)/debug/debughlp.o
#EMUOBJS += $(EMUOBJ)/debug/debugvw.o
#EMUOBJS += $(EMUOBJ)/debug/dvdisasm.o
#EMUOBJS += $(EMUOBJ)/debug/dvmemory.o
#EMUOBJS += $(EMUOBJ)/debug/dvbpoints.o
#EMUOBJS += $(EMUOBJ)/debug/dvwpoints.o
#EMUOBJS += $(EMUOBJ)/debug/dvstate.o
#EMUOBJS += $(EMUOBJ)/debug/dvtext.o
#EMUOBJS += $(EMUOBJ)/debug/express.o
#EMUOBJS += $(EMUOBJ)/debug/textbuf.o
EMUOBJS += $(EMUOBJ)/profiler.o
EMUOBJS += $(OSDOBJ)/osdcore.o
EMUOBJS += $(OSDOBJ)/osdepend.o
#EMUOBJS += $(OSDOBJ)/osdnet.o
#EMUOBJS += $(OSDOBJ)/modules/sound/none.o
#EMUOBJS += $(OSDOBJ)/modules/debugger/none.o
#EMUOBJS += $(OSDOBJ)/modules/debugger/debugint.o

EMUSOUNDOBJS  = $(EMUOBJ)/sound/filter.o
EMUSOUNDOBJS += $(EMUOBJ)/sound/flt_vol.o
EMUSOUNDOBJS += $(EMUOBJ)/sound/flt_rc.o
#EMUSOUNDOBJS += $(EMUOBJ)/sound/wavwrite.o
EMUSOUNDOBJS += $(EMUOBJ)/sound/samples.o

EMUDRIVEROBJS  = $(EMUDRIVERS)/empty.o
EMUDRIVEROBJS += $(EMUDRIVERS)/testcpu.o

EMUMACHINEOBJS  = $(EMUMACHINE)/bcreader.o
EMUMACHINEOBJS += $(EMUMACHINE)/buffer.o
EMUMACHINEOBJS += $(EMUMACHINE)/clock.o
EMUMACHINEOBJS += $(EMUMACHINE)/generic.o
EMUMACHINEOBJS += $(EMUMACHINE)/keyboard.o
EMUMACHINEOBJS += $(EMUMACHINE)/laserdsc.o
EMUMACHINEOBJS += $(EMUMACHINE)/latch.o
EMUMACHINEOBJS += $(EMUMACHINE)/netlist.o
EMUMACHINEOBJS += $(EMUMACHINE)/nvram.o
EMUMACHINEOBJS += $(EMUMACHINE)/ram.o
EMUMACHINEOBJS += $(EMUMACHINE)/legscsi.o
EMUMACHINEOBJS += $(EMUMACHINE)/terminal.o

EMUIMAGEDEVOBJS  = $(EMUIMAGEDEV)/bitbngr.o
EMUIMAGEDEVOBJS += $(EMUIMAGEDEV)/cassette.o
EMUIMAGEDEVOBJS += $(EMUIMAGEDEV)/chd_cd.o
EMUIMAGEDEVOBJS += $(EMUIMAGEDEV)/diablo.o
EMUIMAGEDEVOBJS += $(EMUIMAGEDEV)/flopdrv.o
EMUIMAGEDEVOBJS += $(EMUIMAGEDEV)/floppy.o
EMUIMAGEDEVOBJS += $(EMUIMAGEDEV)/harddriv.o
EMUIMAGEDEVOBJS += $(EMUIMAGEDEV)/midiin.o
EMUIMAGEDEVOBJS += $(EMUIMAGEDEV)/midiout.o
EMUIMAGEDEVOBJS += $(EMUIMAGEDEV)/printer.o
EMUIMAGEDEVOBJS += $(EMUIMAGEDEV)/snapquik.o


EMUVIDEOOBJS  = $(EMUVIDEO)/generic.o
EMUVIDEOOBJS += $(EMUVIDEO)/resnet.o
EMUVIDEOOBJS += $(EMUVIDEO)/rgbutil.o
EMUVIDEOOBJS += $(EMUVIDEO)/vector.o


LIBEMUOBJS = $(EMUOBJS) $(EMUSOUNDOBJS) $(EMUDRIVEROBJS) $(EMUMACHINEOBJS) $(EMUIMAGEDEVOBJS) $(EMUVIDEOOBJS)

$(LIBEMU): $(LIBEMUOBJS)



#-------------------------------------------------
# CPU core objects
#-------------------------------------------------

include $(EMUSRC)/cpu/cpu.mak

$(LIBDASM): $(DASMOBJS)


#-------------------------------------------------
# sound core objects
#-------------------------------------------------

include $(EMUSRC)/sound/sound.mak

#-------------------------------------------------
# netlist core objects
#-------------------------------------------------

#include $(EMUSRC)/netlist/netlist.mak

#-------------------------------------------------
# video core objects
#-------------------------------------------------

include $(EMUSRC)/video/video.mak

#-------------------------------------------------
# machine core objects
#-------------------------------------------------

include $(EMUSRC)/machine/machine.mak

#-------------------------------------------------
# bus core objects
#-------------------------------------------------

include $(EMUSRC)/bus/bus.mak

#-------------------------------------------------
# core optional library
#-------------------------------------------------

$(LIBOPTIONAL): $(CPUOBJS) $(SOUNDOBJS) $(VIDEOOBJS) $(MACHINEOBJS)
$(LIBBUS): $(BUSOBJS)

#-------------------------------------------------
# additional dependencies
#-------------------------------------------------

#$(EMUOBJ)/rendfont.o:   $(EMUOBJ)/uismall.fh

$(EMUOBJ)/video.o:  $(EMUSRC)/rendersw.inc

#-------------------------------------------------
# core layouts
#-------------------------------------------------

#$(EMUOBJ)/rendlay.o:    $(EMULAYOUT)/dualhovu.lh \
#						$(EMULAYOUT)/dualhsxs.lh \
#						$(EMULAYOUT)/dualhuov.lh \
#						$(EMULAYOUT)/horizont.lh \
#						$(EMULAYOUT)/triphsxs.lh \
#						$(EMULAYOUT)/quadhsxs.lh \
#						$(EMULAYOUT)/vertical.lh \
#						$(EMULAYOUT)/lcd.lh \
#						$(EMULAYOUT)/lcd_rot.lh \
#						$(EMULAYOUT)/noscreens.lh \

#$(EMUOBJ)/video.o:      $(EMULAYOUT)/snap.lh
