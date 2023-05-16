@echo off
REM This is use for run putty as command line without typing password.
REM to use it
REM start-putty hostname
start "" "C:\Program Files\PuTTy\putty.exe" -l username -pw password %1
REM or if using putty keys
REM start "" "C:\Program Files\PuTTy\putty.exe" -l username -i mykey.ppk %1
@echo on
