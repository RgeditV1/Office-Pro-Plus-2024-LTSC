@echo off
:: Verificar si ya se está ejecutando como administrador
net session >nul 2>&1
if %errorLevel% == 0 (
    :: Ya es administrador, verificar archivos XML
    cd /d "%~dp0"

    :: Verificar si existe configuration.xml
    if exist "configuration.xml" (
        setup /configure configuration.xml
        pause
    ) else (
        :: Buscar cualquier archivo .xml
        set "xmlFound="
        for %%f in (*.xml) do (
            set "xmlFound=%%f"
            goto :renombrar
        )

        :renombrar
        if defined xmlFound (
            echo Se encontro el archivo: %xmlFound%
            echo Renombrando a configuration.xml...
            ren "%xmlFound%" "configuration.xml"
            echo.
            echo Archivo renombrado exitosamente.
            echo Ejecutando setup...
            echo.
            setup /configure configuration.xml
            pause
        ) else (
            echo.
            echo ============================================
            echo ERROR: Falta el archivo configuration.xml
            echo ============================================
            echo.
            echo No se encontro ningun archivo XML en esta carpeta.
            echo Por favor, coloca el archivo configuration.xml
            echo en la misma ubicacion que este archivo .bat
            echo.
            pause
        )
    )
) else (
    :: No es administrador, relanzar con privilegios elevados
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
)