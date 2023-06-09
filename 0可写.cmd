@echo off
if "%~1"=="" (
    echo 请拖入文件
    pause
    exit /b
)

attrib -r "%~1"
echo 已设置为只读