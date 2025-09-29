@echo off
setlocal enabledelayedexpansion
set count=0
for /d %%i in (*) do (
    set /a count+=1
    for /f %%c in ('dir /a-d /s /b "%%i" ^| find /c ":"') do (
        echo !count!. %%i - %%c files
    )
)
pause
