@ECHO OFF

REM This script assumes we are running from a
REM subdirectory of openssl/packaging/nuget/
REM where openssl is the OpenSLL repo root.

CD ..
CALL buildall.bat no-asm
