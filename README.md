# AutoUpdate for Openwrt

## Usage:

   打开 Openwrt 主页,点击`系统`-`TTYD 终端`或者在浏览器输入`192.168.1.1:7681`,按需输入下方指令:

   更新固件(保留配置): `bash /bin/AutoUpdate.sh`

   更新固件(不保留配置): `bash /bin/AutoUpdate.sh -n`

   更多使用方法: `bash /bin/AutoUpdate.sh --help`

## To Do
	
	1. 新增参数 -d <Downloader>: 自选下载器 <curl | wget | wget-ssl | uclient-fetch>

	2. 云端固件体积获取,并与本地可用空间比较

	3. 继续优化云端固件名称/版本获取方式

## 自动编译 [AutoBuild-Actions](https://github.com/Hyy2001X/AutoBuild-Actions)
