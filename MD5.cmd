@echo off
setlocal enabledelayedexpansion

if "%~1"=="" (
    echo 请拖入文件！！！
    echo.
    echo.
    pause
    exit /b
)

set "list=%*"
set "count=0"

echo 序号	MD5					拖入的文件

REM 遍历list变量中的每个文件
for %%a in (!list!) do (
  set /a "count+=1"
  set "file=%%a"

  REM 如果文件是文件夹，则输出相应信息
  if exist "!file!\*" (
    echo !count!	拖入了文件夹				!file!
  ) else (
    REM 计算文件的MD5哈希值，并输出相应信息
    for /f "tokens=*" %%b in ('certutil -hashfile !file! MD5 ^| find /v ":"') do (
      set "md5!count!=%%b"
      echo !count!	%%b	!file!
    )
  )
)

REM 如果只有两个文件，则比较它们的MD5哈希值
if !count! equ 2 (
  echo.
  if "!md51!" equ "!md52!" (
    echo 比较结果：完全相同
  ) else (
    echo 比较结果：不相同
  )
)

echo.
echo.
pause