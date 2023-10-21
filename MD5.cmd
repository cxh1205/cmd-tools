@echo off
setlocal enabledelayedexpansion

if "%~1"=="" (
    echo �������ļ�������
    echo.
    echo.
    pause
    exit /b
)

set "list=%*"
set "count=0"

echo ���	MD5					������ļ�

REM ����list�����е�ÿ���ļ�
for %%a in (!list!) do (
  set /a "count+=1"
  set "file=%%a"

  REM ����ļ����ļ��У��������Ӧ��Ϣ
  if exist "!file!\*" (
    echo !count!	�������ļ���				!file!
  ) else (
    REM �����ļ���MD5��ϣֵ���������Ӧ��Ϣ
    for /f "tokens=*" %%b in ('certutil -hashfile !file! MD5 ^| find /v ":"') do (
      set "md5!count!=%%b"
      echo !count!	%%b	!file!
    )
  )
)

REM ���ֻ�������ļ�����Ƚ����ǵ�MD5��ϣֵ
if !count! equ 2 (
  echo.
  if "!md51!" equ "!md52!" (
    echo �ȽϽ������ȫ��ͬ
  ) else (
    echo �ȽϽ��������ͬ
  )
)

echo.
echo.
pause