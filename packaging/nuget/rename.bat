@ECHO OFF

REM This script assumes we are running
REM from the OpenSLL repo root.

REM OpenSLL builds use *32 directories for x64 builds,
REM so we rename all *32 directories to *64 to avoid 
REM conflicts with x86 builds in the same locations.

RENAME inc32 inc64
RENAME out32 out64
RENAME out32dll out64dll
RENAME out32.dbg out64.dbg
RENAME out32dll.dbg out64dll.dbg
RENAME tmp32 tmp64
RENAME tmp32dll tmp64dll
RENAME tmp32.dbg tmp64.dbg
RENAME tmp32dll.dbg tmp64dll.dbg
