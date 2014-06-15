@ECHO OFF

REM This script assumes we are running
REM from the OpenSLL repo root.

REM Clean up from previous builds.

RMDIR /s /q inc32
RMDIR /s /q out32
RMDIR /s /q out32dll
RMDIR /s /q out32.dbg
RMDIR /s /q out32dll.dbg
RMDIR /s /q tmp32
RMDIR /s /q tmp32dll
RMDIR /s /q tmp32.dbg
RMDIR /s /q tmp32dll.dbg

RMDIR /s /q inc64
RMDIR /s /q out64
RMDIR /s /q out64dll
RMDIR /s /q out64.dbg
RMDIR /s /q out64dll.dbg
RMDIR /s /q tmp64
RMDIR /s /q tmp64dll
RMDIR /s /q tmp64.dbg
RMDIR /s /q tmp64dll.dbg