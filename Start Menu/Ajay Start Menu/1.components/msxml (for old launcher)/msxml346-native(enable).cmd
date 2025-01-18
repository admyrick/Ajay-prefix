@echo off
echo Configuring msxml DLL overrides in the registry...

:: Set msxml3 to native, builtin
reg add "HKCU\Software\Wine\DllOverrides" /v "msxml3" /t REG_SZ /d "native,builtin" /f >nul 2>&1

:: Set msxml3r to native, builtin
reg add "HKCU\Software\Wine\DllOverrides" /v "msxml3r" /t REG_SZ /d "native,builtin" /f >nul 2>&1

:: Set msxml4 to native, builtin
reg add "HKCU\Software\Wine\DllOverrides" /v "msxml4" /t REG_SZ /d "native,builtin" /f >nul 2>&1

:: Set msxml4r to native, builtin
reg add "HKCU\Software\Wine\DllOverrides" /v "msxml4r" /t REG_SZ /d "native,builtin" /f >nul 2>&1

:: Set msxml6 to native, builtin
reg add "HKCU\Software\Wine\DllOverrides" /v "msxml6" /t REG_SZ /d "native,builtin" /f >nul 2>&1

:: Set msxml6r to native, builtin
reg add "HKCU\Software\Wine\DllOverrides" /v "msxml6r" /t REG_SZ /d "native,builtin" /f >nul 2>&1

:: Wait 10 seconds to ensure changes are applied
timeout /t 10 /nobreak >nul 2>&1

:: Reapply the registry actions silently
reg add "HKCU\Software\Wine\DllOverrides" /v "msxml3" /t REG_SZ /d "native,builtin" /f >nul 2>&1
reg add "HKCU\Software\Wine\DllOverrides" /v "msxml3r" /t REG_SZ /d "native,builtin" /f >nul 2>&1
reg add "HKCU\Software\Wine\DllOverrides" /v "msxml4" /t REG_SZ /d "native,builtin" /f >nul 2>&1
reg add "HKCU\Software\Wine\DllOverrides" /v "msxml4r" /t REG_SZ /d "native,builtin" /f >nul 2>&1
reg add "HKCU\Software\Wine\DllOverrides" /v "msxml6" /t REG_SZ /d "native,builtin" /f >nul 2>&1
reg add "HKCU\Software\Wine\DllOverrides" /v "msxml6r" /t REG_SZ /d "native,builtin" /f >nul 2>&1

echo msxml DLL overrides have been successfully configured.