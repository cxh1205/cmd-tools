@echo off
setlocal enabledelayedexpansion

REM 本文件用于创建新版本的文件，文件名格式应为：日期v版本号-文件名

REM 获取文件路径
set "filepath=%~dp1"
REM 获取文件名（带扩展名）
set "filename=%~nx1"
REM 获取文件名（不带扩展名）
set "name=%~n1"
REM 获取文件扩展名
set "ext=%~x1"

if "%~1"=="" (
    echo 请拖入文件！！
    echo.
    echo.
    pause
    exit /b
)

set "info="
set "title="

REM 以“-”为分隔符，分解文件名
for /f "tokens=1,* delims=-" %%a in ("%name%") do (
  set "info=%%a"
  set "title=%%b"
)

REM 以“v”为分隔符，获取版本号
for /f "tokens=2 delims=v" %%a in ("%info%") do (
  set "version=%%a"
)

REM 获取当前日期
for /f "tokens=2-3 delims=/ " %%i in ('date /t') do (
  set "date=%%i%%j" 
)

REM 版本号加1
set /a "version+=1"

REM 复制文件并重命名，如果文件已存在则提示是否覆盖
copy /-Y "%filepath%%filename%" "%filepath%%date%v%version%-%title%%ext%"


