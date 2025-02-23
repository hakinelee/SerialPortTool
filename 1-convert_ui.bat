@echo off
chcp 65001 > nul
REM 将 UI 文件转换为 Python 文件
echo 正在转换 UI 文件，请稍候...

REM 检查是否安装了 Python
where python >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo 未找到 Python，请先安装 Python！
    pause
    exit /b 1
)

python -m pip show pyqt5 >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo 未安装 PyQt5，请先安装 PyQt5！
    echo 正在安装 PyQt5...
    python -m pip install pyqt5
    if %ERRORLEVEL% neq 0 (
        echo 安装失败！请手动安装 PyQt5。
        pause
        exit /b 1
    )
)

REM 执行 UI 转换
python -m PyQt5.uic.pyuic  UI/demo1.ui  -o demo1.py

REM 转换完成后显示消息
echo 转换完成！

pause