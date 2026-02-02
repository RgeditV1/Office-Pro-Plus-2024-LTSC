@echo off
:: Verificar si está en modo administrador
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:: Ejecutar PowerShell como admin con un comando
powershell -NoProfile -ExecutionPolicy Bypass -Command "irm https://get.activated.win | iex"

pause
