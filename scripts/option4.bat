:: Created by Sebastian Januchowski
:: polsoft.its@fastservice.com
:: https://github.com/seb07uk
@echo off
title System File Checker (SFC)
echo   [2;3mCreated by Sebastian Januchowski                  polsoft.ITS                   e-mail: polsoft.its@fastservice.com[0m
echo.
echo [1;3;32m--- System File Checker (SFC) ---[0m
sfc /scannow
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'System File Checker (SFC) complete!', 'polsoft.ITS London', [System.Windows.Forms.ToolTipIcon]::None)}"
echo.
timeout /t 5 >nul
endlocal
taskkill /f /im explorer.exe & start explorer & exit