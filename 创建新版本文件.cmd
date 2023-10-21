@echo off
setlocal enabledelayedexpansion

REM ���ļ����ڴ����°汾���ļ����ļ�����ʽӦΪ������v�汾��-�ļ���

REM ��ȡ�ļ�·��
set "filepath=%~dp1"
REM ��ȡ�ļ���������չ����
set "filename=%~nx1"
REM ��ȡ�ļ�����������չ����
set "name=%~n1"
REM ��ȡ�ļ���չ��
set "ext=%~x1"

if "%~1"=="" (
    echo �������ļ�����
    echo.
    echo.
    pause
    exit /b
)

set "info="
set "title="

REM �ԡ�-��Ϊ�ָ������ֽ��ļ���
for /f "tokens=1,* delims=-" %%a in ("%name%") do (
  set "info=%%a"
  set "title=%%b"
)

REM �ԡ�v��Ϊ�ָ�������ȡ�汾��
for /f "tokens=2 delims=v" %%a in ("%info%") do (
  set "version=%%a"
)

REM ��ȡ��ǰ����
for /f "tokens=2-3 delims=/ " %%i in ('date /t') do (
  set "date=%%i%%j" 
)

REM �汾�ż�1
set /a "version+=1"

REM �����ļ���������������ļ��Ѵ�������ʾ�Ƿ񸲸�
copy /-Y "%filepath%%filename%" "%filepath%%date%v%version%-%title%%ext%"


