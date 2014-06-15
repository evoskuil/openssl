@ECHO OFF

REM This script assumes we are running from
REM openssl/packaging/nuget/buildall.bat
REM where openssl is the OpenSLL repo root.

CD ..\..

CALL packaging\nuget\purge.bat

PUSHD
CALL packaging\nuget\build64.bat %1 %2 %3 %4 %5 %6 %7 %8 %9
POPD

CALL packaging\nuget\rename.bat

PUSHD
CALL packaging\nuget\build32.bat %1 %2 %3 %4 %5 %6 %7 %8 %9
POPD
