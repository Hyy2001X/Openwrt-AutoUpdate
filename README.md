# AutoUpdate
使用方法/Usage: 
-

1.打开路由器后管理界面

2.打开`系统`-`TTYD终端`

3.在命令行输入

`curl -s https://raw.githubusercontent.com/Hyy2001X/Openwrt-AutoUpdate/master/AutoUpdate.sh | sh`

注:仅限使用 AutoBuild-Actions 编译的固件可使用此脚本

如何搭建属于自己的自动更新通道(Github Release)
-

1. `Fork` Openwrt-AutoUpdate 仓库 `https://github.com/Hyy2001X/Openwrt-AutoUpdate`

2. 进入你的 `Openwrt-AutoUpdate` 仓库

3. 编辑 `AutoUpdate.sh` 文件,修改第 5-12 行为自己的信息

4. 编辑完成,点击下方的`Commit changes`

5. 点击右边的`Release`,然后点击绿色的`Create a new release`

6. 填写信息,`Tag version`填写为`AutoUpdate`,`Release title`随意填写

7. 点击下方`Publish release`来创建第一个Release

如何使用 AutoBuild-Actions 生成属于自己的固件
-

1. `Fork` AutoBuild-Actions 仓库 `https://github.com/Hyy2001X/AutoBuild-Actions`

2. 进入你的 `AutoBuild-Actions` 仓库,上传你在本地生成的`.config`文件

3. 编辑 `Scripts/diy-part1.sh`文件,修改第 3-4 行地址为你的地址

4. 编辑 `Scripts/diy-part2.sh`文件,修改第 3 行名称为你想要的作者名称(将显示于Openwrt主界面)

5. 编辑 `Scripts/diy-part3.sh`文件,修改第 3-5 行内容为你的设备配置(参考`.config`文件)

5. 注意:如果使用了其他格式如`ext4、img.gz`,请修改相关内容

6. 检查并保存,点击下方的`Commit changes`

7. 开始编译,双击右上角的`Star`即开始编译,点击上方`Actions`即可查看编译进度

8. 耐心等待1-2个小时,点击`All workflows`下的`AutoBuild OpenWrt`即可看到名为`Openwrt`的文件,点击即可下载到本地

9. 解压`Openwrt.zip`,将会得到两个名称分别为为`*.bin`和`*.detail`的文件

如何上传编译完成的固件至Github Release
-

1. 进入你的 `Openwrt-AutoUpdate` 仓库

2. 点击右边的`Release`

3. 点击`Attach binaries by dropping them here or selecting them.`,选择解压后得到的两个文件,确认上传并耐心等待

4. 点击下方`Publish release`来发布Release
