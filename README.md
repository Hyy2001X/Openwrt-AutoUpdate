# AutoUpdate
使用方法/Usage: 
-

1.打开路由器后管理界面

2.打开`系统`-`TTYD终端`

3.在命令行输入

`curl -s https://raw.githubusercontent.com/Hyy2001X/Openwrt-AutoUpdate/master/AutoUpdate.sh | sh`

注:仅限使用 AutoBuild-Actions 编译的固件可使用此脚本

仓库地址:`https://github.com/Hyy2001X/AutoBuild-Actions`


如何搭配 AutoBuild-Actions 生成属于自己的固件
-

1.`Fork` AutoBuild-Actions 仓库 `https://github.com/Hyy2001X/AutoBuild-Actions`

2.接着 `Fork` Openwrt-AutoUpdate 仓库 `https://github.com/Hyy2001X/Openwrt-AutoUpdate`

3.进入自己的 AutoBuild-Actions 仓库,上传自己的`.config`文件

4.编辑 `Scripts/diy-part1.sh`文件,将最下方的 Openwrt-AutoUpdate 仓库地址改成你自己的地址

5.编辑 `Scripts/diy-part2.sh`文件,修改位于第 3 行的 Author=`Hyy2001` 为你心仪的名字(将显示于Openwrt主界面)

6.编辑 `Scripts/diy-part3.sh`文件,修改第 3-5 行内容为你的设备配置(参考`.config`文件)

注意:如果使用了其他格式如`ext4、img.gz`,请修改相关内容

7.开始编译,双击右上角的`Star`即开始编译,点击上方`Actions`即可查看编译进度

8.耐心等待1-2个小时,点击`All workflows`下的`AutoBuild OpenWrt`即可看到名为`Openwrt`的文件,点击即可下载到本地
