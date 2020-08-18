#!/bin/bash
# AutoBuild Script Module by Hyy2001

Version=V1.0
Github_Release_URL=https://github.com/Nxiz/AutoBuild/releases/tag/Auto-Update
Git_Download_URL=https://github.com/Nxiz/AutoBuild/releases/download/Auto-Update
CURRENT_VERSION=`cat /etc/openwrt_date`
clear
echo -e "Openwrt Auto-Update Script $Version by Hyy2001\n"
if [ "$CURRENT_VERSION" == "" ]; then
	echo "本地固件版本获取失败!"
	exit
fi
cd /tmp
echo "开始获取云端版本信息..."
GET_Version=`wget --no-check-certificate -q $Github_Release_URL -O - | egrep -o 'R[0-9]+.[0-9]+.[0-9]+.[0-9]+' | awk 'NR==1'`
if [ "$GET_Version" == "" ]; then
	echo "云端版本获取失败!"
	exit
fi
echo -e "\n当前版本: $CURRENT_VERSION"
echo "云端版本: $GET_Version"
if [ $CURRENT_VERSION == $GET_Version ];then
	echo "System up-to-date"
	exit
fi
Firmware=AutoBuild-d-team_newifi-d2-Lede-$GET_Version.bin
Firmware_Detail=AutoBuild-d-team_newifi-d2-Lede-$GET_Version.detail
echo -e "\n开始下载云端固件..."
wget --no-check-certificate -q $Git_Download_URL/$Firmware -O $Firmware
if [ ! "$?" == 0 ]; then
	echo "[$Firmware]下载失败!"
	exit
fi
echo "...下载成功,固件名称:[$Firmware]"
echo -e "\n开始下载固件详细信息..."
wget --no-check-certificate -q $Git_Download_URL/$Firmware_Detail -O $Firmware_Detail
if [ ! "$?" == 0 ]; then
	echo "[$Firmware_Detail]下载失败!"
	exit
fi
echo "...下载成功"
GET_SHA=`awk -F'[ :]' '/SHA256/ {print $2;exit}' $Firmware_Detail`
CURRENT_SHA=`sha256sum $Firmware | cut -d ' ' -f1`
echo -e "\n云端SHA256:$GET_SHA"
echo "当前SHA256:$CURRENT_SHA"
if [ $GET_SHA == "" ] || [ $CURRENT_SHA == "" ];then
	echo "SHA256对比失败!"
	exit
fi
echo -e "\n开始升级固件,请耐心等待..."
sysupgrade -v $Firmware
