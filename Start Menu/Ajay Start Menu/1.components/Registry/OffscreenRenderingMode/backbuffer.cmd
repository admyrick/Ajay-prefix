@echo off
echo Setting the "OffScreenRenderingMode" to "backbuffer" in the registry...

:: Add or update the registry key silently
reg add "HKEY_CURRENT_USER\Software\Wine\Direct3D" /v "OffScreenRenderingMode" /t REG_SZ /d "backbuffer" /f >nul 2>&1

:: Wait for 10 seconds silently
timeout /t 10 /nobreak >nul 2>&1

:: Reapply the registry setting after the delay
reg add "HKEY_CURRENT_USER\Software\Wine\Direct3D" /v "OffScreenRenderingMode" /t REG_SZ /d "backbuffer" /f >nul 2>&1

echo The registry modification for "OffScreenRenderingMode" has been applied successfully.
exit