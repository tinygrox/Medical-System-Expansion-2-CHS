@echo off
::ModFolder变量是rimworld目录下的Mods全路径
set "ModFolder=G:\SteamLibrary\steamapps\common\RimWorld\Mods"
::curdirname为获取当前bat文件所在的文件夹名称
for %%d in (.) do set "curdirname=%%~nxd"
::将复制bat当前目录下所有的文件到目标目录(ModFolder)，如果有要排除的文件，请在exclusion.txt文件中添加
echo d | xcopy ".\*" "%ModFolder%\%curdirname%" /d/s/i/y/EXCLUDE:..\exclusion.txt
pause