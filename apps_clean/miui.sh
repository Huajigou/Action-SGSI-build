#!/bin/bash

LOCALDIR=`cd "$( dirname $0 )" && pwd`
cd $LOCALDIR

systemdir=$1

apps_dir="
CameraTools
MiuiCamera
talkback
mab
MSA
BasicDreams
AnalyticsCore
HybridAccessory
HybridPlatform
greenguard
MIUIgreenguard
MIUIDaemon
NQNfcNci
TSMClient
YouDaoEngine
DMRegService
Mirror
MIService
Cit
cit
Cit_QR
com.xiaomi.macro
Email
GameCenter
MiuiAccessibility
KSICibaEngine
VirtualSim
YouDaoEngine
CatcherPatch
CatchLog
MIDrive
MiDrive
Huanji
XiaomiShop
Youpin
shop
xiaomishop
Xiaomishop
NfcNci
com.xiaomi.youpin
com.taobao.taobao
tv.danmaku.bili
MIUIQuickSearchBox
QuickSearchBox
NewHome
MIMobileNoti
MIShop

"

for delete_dir in $apps_dir ;do
  find $systemdir -type d -name "$delete_dir" | xargs rm -rf
done

rm -rf $1/system_ext/apex*
