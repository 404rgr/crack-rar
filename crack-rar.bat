@echo off
mode con: cols=47 lines=20
title Rao CYber Team - Crack rar
copy "C:\Program Files\WinRAR\Unrar.exe"
color 0b
SET PSWD=0
SET DEST=%TEMP%\%RANDOM%
MD %DEST%
:RAR
cls
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo  Rao Cyber Team - Rar Password Cracker
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
SET/P "NAME= File Name : "
IF "%NAME%"=="" goto nosuport
goto go
:nosuport
echo ----------------------------------------------
echo ERROR 0x%random%
echo ----------------------------------------------
echo Maaf Ada Kesalahan Parse.
pause
goto RAR
:go
SET/P "PATH=file location : "
IF "%PATH%"=="" goto PERROR
goto NEXT
:PERROR
echo ----------------------------------------------
echo ERROR 0x%random%
echo ----------------------------------------------
echo Maaf Ada Kesalahan.
pause
goto RAR
:NEXT
IF EXIST "%PATH%\%NAME%" GOTO START
goto PATH
cls
echo Opppss File Tidak Mendukung.
pause
exit
:START
SET /A PSWD=%PSWD%+1
echo crack rar 1 1 0 1 1 0 0 1 0 1 1 0 0 1
echo Crack rar 1 1 0 1 1 0 0 1 0 1 1 0 0 1
echo cRack rar 1 1 0 1 1 0 0 1 0 1 1 0 0 1
echo crAck rar 1 1 0 1 1 0 0 1 0 1 1 0 0 1
echo craCk rar 1 1 0 1 1 0 0 1 0 1 1 0 0 1
echo cracK rar 1 1 0 1 1 0 0 1 0 1 1 0 0 1
echo crack Rar 1 1 0 1 1 0 0 1 0 1 1 0 0 1
echo crack rAr 1 1 0  1 0 0 1 0 1 1 0 0 11
echo crack raR 1 1 0 1 1 0 0 1 0 1 1 0 0 1
echo 1 crack rar 1 1 0 1 1 0 0 1 0 1 1 0 0
echo 0 1 Crack rar 1 1 0 1 1 0 0 1 0 1 1 0
echo 0 0 1 cRack rar 1 1 0 1 1 0 0 1 0 1 1 
echo 1 0 0 1 crAck rar 1 1 0 1 1 0 0 1 0 1 
echo 1 1 0 0 1 craCk rar 1 1 0 1 1 0 0 1 0 
echo 0 1 1 0 0 1 cracK rar 1 1 0 1 1 0 0 1 
UNRAR E -INUL -P%PSWD% "%PATH%\%NAME%" "%DEST%"
IF /I %ERRORLEVEL% EQU 0 GOTO FINISH
GOTO START
:FINISH
RD %DEST% /Q /S
Del "Unrar.exe"
cls
echo     ...................................
echo   .: successfully cracked the password :.
echo .:::            Rao Cyber Team         :::.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo password ditemukan
echo FILE = %NAME%
echo CRACKED PASSWORD = %PSWD%
pause>NUL
exit
