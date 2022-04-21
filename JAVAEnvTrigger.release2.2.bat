::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJH+i21ckOA5AcA6DKmr0D7YTiA==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJiZkk0
::ZQ05rAF9IBncCkqN+0xwdVsGAlbi
::ZQ05rAF9IAHYFVzEqQIaCS11aQqUNXm1C7AS/Nzp5u2Ap19PGrBf
::eg0/rx1wNQPfEVWB+kM9LVsJDC6jCkqfCKNS3Pry6O2CsAMPUe46eZzelObAcoA=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATE4hM+P0paLA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCuDJN1ZCMfDyZKvqjiGOX2/CroM7frH5euRo0gTQvYtcYjc36ayCsEly2DqY6I/331dndleQkkWewquDg==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off&title JAVA Enviroment Trigger2.0&chcp 65001 >nul
echo *==JAVA Enviroment Trigger2.0 powered by v1nw1n==*
echo ^|for bug:v1nw1n@qq.com			 	 ^|
echo ^|						 ^|
echo *================================================*
echo [+]detecting java environment...
if defined JAVA_HOME (echo [+]java_home have existed.& echo [+]%JAVA_HOME% ) else   (echo [+]set JAVA_HOME... & setx JAVA_HOME "" /M 2>nul) 
if defined CLASSPATH (echo [+]CLASSPATH  have existed.& echo [+]%CLASSPATH% ) else (echo [+]set CLASSPATH... &  setx CLASSPATH ".;%JAVA_HOME%\lib\dt.jar;%JAVA_HOME%\lib\tools.jar; " /M 2>nul)
rem findstr successful is 0 but 1
echo %path% | findstr jre\bin >nul 2>nul
if ERRORLEVEL 1 (echo [+]set path... & setx path "%%JAVA_HOME%%\bin;%%JAVA_HOME%%\jre\bin;%path%" /M 2>nul) else (echo [+]path have existed.)
set string=%path%
SETLOCAL  ENABLEDELAYEDEXPANSION
:split
for /f "tokens=1,* delims=;" %%i in ("%string%") do (
  rem echo [+]%%i ::: !errorlevel!
  echo "%%i" | findstr /C:"%JAVA_HOME%" >nul 2>nul
  if "!errorlevel!" == "0" echo [+]%%i
  echo "%%i" | findstr "Oracle\Java\javapath" >nul 2>nul 
  if "!errorlevel!" == "0" echo [+]%%i ^(auto^)
  set string=%%j
)
if not "%string%"=="" goto split
SETLOCAL  DISABLEDELAYEDEXPANSION
rem pause	
rem if ERRORLEVEL 1 echo changed failed !plz use [administrator] to run me & goto over
echo =================================================
echo [+]if the value is fault,just delete them then run me again.
echo [+]current version:
echo [+]%JAVA_HOME%		
echo =================================================
echo ^|option		^|version			^|
echo =================================================
echo ^|A		^|jdk-16.0.2			^|
echo ^|B		^|jdk-11.0.12			^|
echo ^|C		^|jdk1.8.0_181			^|
echo ^|D		^|jdk1.7.0_80			^|
echo ^|E		^|jdk1.7.0_15			^|
echo ^|F		^|Custom				^|
echo ^|N/other key	^|Cancel				^|
echo =================================================
echo [+]press any key to start choosing your option.
pause > nul
REM 16---C:\Program Files\Java\jdk-16.0.2		16
REM 11---C:\Program Files\Java\jdk-11.0.12		11
REM 8---C:\Program Files\Java\jdk1.8.0_181		8
REM 7u80(no null byte---C:\Program Files\Java\jdk1.7.0_80	780
REM 7u15(null byte---C:\Program Files\Java\jdk1.7.0_15	715
REM auto :
REM 16---C:\Program Files\Common Files\Oracle\Java\javapath
REM 1.8---C:\Program Files (x86)\Common Files\Oracle\Java\javapath
REM ctrl+c errorlevel  is 0
choice /C ABCDEFN /T 5 /D N /N /M "[+]choose the option to change your JDK version [ctrl+c Cancle]   " 
REM error statu errorlevel  is 255
if  ERRORLEVEL 255 goto over
if  ERRORLEVEL 7 goto over
if  ERRORLEVEL 6 (
  SETLOCAL  ENABLEDELAYEDEXPANSION
  set /p JavaHome="[+]input installation directory of your JAVA   "
  echo [+]set JAVA_HOME...
  setx JAVA_HOME "!JavaHome!" /M >nul 2>nul
  SETLOCAL DISABLEDELAYEDEXPANSION
)
REM setx success errorlevel  is 0 fail is 1
if  ERRORLEVEL 5 setx JAVA_HOME "C:\Program Files\Java\jdk1.7.0_15" /M >nul 2>nul
if  ERRORLEVEL 4 setx JAVA_HOME "C:\Program Files\Java\jdk1.7.0_80" /M >nul 2>nul
if  ERRORLEVEL 3 setx JAVA_HOME "C:\Program Files\Java\jdk1.8.0_181" /M >nul 2>nul
if  ERRORLEVEL 2 setx JAVA_HOME "C:\Program Files\Java\jdk-11.0.12" /M >nul 2>nul
if  ERRORLEVEL 1 setx JAVA_HOME "C:\Program Files\Java\jdk-16.0.2" /M >nul 2>nul

if ERRORLEVEL 1 echo [-]changed failed.something goes wrong & goto over
if ERRORLEVEL 0 echo [+]changed successful.plz reboot cmd to check.
:over
echo EXIT
timeout /t 3 /nobreak >nul