@echo off
echo Setting Wine version to win7...
reg add "HKEY_CURRENT_USER\Software\Wine" /v "Version" /t REG_SZ /d "win7" /f >nul 2>&1

timeout.exe /t 10 /nobreak >nul 2>&1

reg add "HKEY_CURRENT_USER\Software\Wine" /v "Version" /t REG_SZ /d "win7" /f >nul 2>&1
echo Wine version has been set to win7 successfully.
exit
