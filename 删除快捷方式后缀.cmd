@echo off
setlocal enabledelayedexpansion

REM 本cmd命令用于删除快捷方式文件名中的“ - 快捷方式”后缀

if "%~1"=="" (
    echo 请拖入文件！！！
    echo.
    echo.
    pause
    exit /b
)

set "list=%*"
set "count=0"

echo %list%

REM 遍历list变量中的每个lnk文件，这些lnk文件都是文件夹的快捷方式
for %%a in (!list!) do (
  REM 获取文件名、文件名（不带扩展名）、扩展名
  set "file=%%a"
  set "name=%%~na"
  set "ext=%%~xa"

  REM 判断名字是否以“ - 快捷方式”结尾，如果是就删掉，否则什么都不做
  if "!name:~-7!"==" - 快捷方式" (
      set "name=!name: - 快捷方式=!"
      REM 重命名
      ren !file! "!name!!ext!"
  )

)

pause