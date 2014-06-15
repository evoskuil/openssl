REM This script assumes we are running
REM from the OpenSLL repo root.

ECHO BUILD x86 %1

REM See "Troubleshooting" INSTALL.W32
perl util\mkdef.pl crypto ssl update

REM Workaround for *FUTURE* bug introduced into util\mk1mf.pl which fails to create
REM the *.mak files such that opensslconf.h is copied to the include directory.
REM MKDIR inc32\openssl
REM COPY crypto\opensslconf.h inc32\openssl\opensslconf.h

CALL "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" x86

perl Configure VC-WIN32 %1 %2 %3 %4 %5 %6 %7 %8 %9
CALL ms\do_ms.bat

nmake -f ms\nt.mak
nmake -f ms\ntdll.mak

perl Configure debug-VC-WIN32 %1 %2 %3 %4 %5 %6 %7 %8 %9
CALL ms\do_ms.bat

nmake -f ms\nt.mak
nmake -f ms\ntdll.mak
