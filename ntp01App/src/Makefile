TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = ntp01
# ntp01.dbd will be created and installed
DBD += ntp01.dbd

# ntp01.dbd will be made up from these files:
ntp01_DBD += base.dbd

# Include dbd files from all support applications:
ntp01_DBD += devIocStats.dbd
ntp01_DBD += devIocStatsNTP.dbd

# Add all the support libraries needed by this IOC
ntp01_LIBS += devIocStats

# ntp01_registerRecordDeviceDriver.cpp derives from ntp01.dbd
ntp01_SRCS += ntp01_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
ntp01_SRCS_DEFAULT += ntp01Main.cpp
ntp01_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#ntp01_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
ntp01_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

