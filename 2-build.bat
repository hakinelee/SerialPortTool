@echo off 
REM 设置代码页为 UTF-8 
chcp 65001 > nul
 
REM 使用 PyInstaller 打包，并指定 exe 文件名称为 SerialPort Tool
echo 正在打包，请稍候...
pyinstaller -F -w -i icon/favicon.ico --name="SerialPort Tool" main.py
 
REM 检查打包是否成功 
if %ERRORLEVEL% neq 0 (
    echo 打包失败！请检查错误信息。
    pause 
    exit /b 1 
)

REM 打包完成后显示消息 
echo 打包完成！ 
pause 
exit /b 0 