rem ***************************************************************************
@echo off
@set HUCC_HOME=E:\ProjectsGe\Coding\PCEngine\huc-2025-01-27-Win64\

setlocal
cd /d "%~dp0"
pushd

del C_log.txt

set PCE_INCLUDE=%HUCC_HOME%\include\hucc;%CD%\..\..\..\lib
set PATH=%HUCC_HOME%\bin;%PATH%

hucc.exe -O2 huc_example.c > C_log.txt

type C_log.txt
pause