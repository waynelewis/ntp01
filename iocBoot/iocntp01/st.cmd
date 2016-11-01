#!../../bin/linux-x86/ntp01

## You may have to change ntp01 to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/ntp01.dbd"
ntp01_registerRecordDeviceDriver pdbbase

## Load record instances
dbLoadRecords("db/iocNTP.db","IOCNAME=ntptest")
dbLoadRecords("db/iocNTPPeer.db","IOCNAME=ntptest,PEER=0")
dbLoadRecords("db/iocNTPPeer.db","IOCNAME=ntptest,PEER=1")
dbLoadRecords("db/iocNTPPeer.db","IOCNAME=ntptest,PEER=2")
dbLoadRecords("db/iocNTPPeer.db","IOCNAME=ntptest,PEER=3")
dbLoadRecords("db/iocNTPPeer.db","IOCNAME=ntptest,PEER=4")
dbLoadRecords("db/iocNTPPeer.db","IOCNAME=ntptest,PEER=5")
dbLoadRecords("db/iocAdminSoft.db","IOC=ntptest")

cd "${TOP}/iocBoot/${IOC}"
iocInit()

## Start any sequence programs
#seq sncxxx,"user=wlewis"
