@echo off
setlocal enabledelayedexpansion

REM ��cmd��������ɾ����ݷ�ʽ�ļ����еġ� - ��ݷ�ʽ����׺

if "%~1"=="" (
    echo �������ļ�������
    echo.
    echo.
    pause
    exit /b
)

set "list=%*"
set "count=0"

echo %list%

REM ����list�����е�ÿ��lnk�ļ�����Щlnk�ļ������ļ��еĿ�ݷ�ʽ
for %%a in (!list!) do (
  REM ��ȡ�ļ������ļ�����������չ��������չ��
  set "file=%%a"
  set "name=%%~na"
  set "ext=%%~xa"

  REM �ж������Ƿ��ԡ� - ��ݷ�ʽ����β������Ǿ�ɾ��������ʲô������
  if "!name:~-7!"==" - ��ݷ�ʽ" (
      set "name=!name: - ��ݷ�ʽ=!"
      REM ������
      ren !file! "!name!!ext!"
  )

)

pause