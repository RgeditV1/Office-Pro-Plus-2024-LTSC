# Office Pro Plus 2024 LTSC - Instalador Automatizado

Script automatizado en Batch para la instalación de **Microsoft Office Professional Plus 2024 LTSC** de forma sencilla y eficiente.

## 📋 Descripción

Este script `.bat` facilita la instalación de Office Pro Plus 2024 LTSC mediante la automatización del proceso de configuración. Detecta automáticamente archivos de configuración XML, los renombra si es necesario, y ejecuta la instalación con privilegios de administrador.

## ⚠️ Requisitos

- ✅ **Windows 10/11**
- ✅ **Conexión a Internet activa** (requerida para la descarga e instalación)
- ✅ **Privilegios de Administrador**
- ✅ Archivos de instalación de Office descargados

> **Nota:** El código está en desarrollo. Actualmente **no detecta automáticamente** si hay conexión a Internet. Asegúrate de estar conectado antes de ejecutar el script.

## 🚀 Uso

### Paso 1: Descargar archivos de Office

Visita la página oficial de Microsoft para descargar los archivos necesarios:

📖 [Implementación de Office LTSC 2024 - Office | Microsoft Learn](https://learn.microsoft.com/es-es/office/ltsc/2024/deploy)

o utiliza los archivos de este repositorio renombrando setup.xlr8 a setup.exe

### Paso 2: Preparar la instalación

1. Descarga este repositorio
2. Coloca el archivo `.bat` en el **mismo directorio** donde guardaste los archivos de instalación de Office
3. Asegúrate de tener un archivo `configuration.xml` en la carpeta. si cualquier xml se renombrara a configuration.xml (debo agregar algun confirmador de archivo xml en el codigo... algun dia jaja)

### Paso 3: Ejecutar

1. Haz doble clic en el archivo `.bat`
2. Acepta el prompt de UAC (Control de Cuentas de Usuario)
3. El script hará lo siguiente automáticamente:
   - ✔️ Verificará privilegios de administrador
   - ✔️ Buscará el archivo `configuration.xml`
   - ✔️ Renombrará automáticamente cualquier `.xml` encontrado si no se llama `configuration.xml`
   - ✔️ Ejecutará la instalación de Office

## 🔧 Características

- 🔐 **Elevación automática de privilegios** - Se ejecuta como administrador sin pasos adicionales
- 📝 **Detección inteligente de XML** - Encuentra y renombra archivos de configuración automáticamente
- ⚡ **Instalación desatendida** - Proceso automatizado de principio a fin
- 📌 **Mensajes claros** - Feedback visual en cada paso del proceso

## ❗ Solución de Problemas

### Error: "Falta el archivo configuration.xml"

Si recibes este mensaje:
- Verifica que los archivos de Office estén en la misma carpeta que el `.bat`
- Asegúrate de tener al menos un archivo `.xml` de configuración
- Descarga los archivos desde el enlace oficial de Microsoft

### La ventana se cierra inmediatamente

- Haz clic derecho en el archivo `.bat` → **Ejecutar como administrador**

## 🔑 Activación de Office

Una vez instalado Office, si deseas activarlo, visita el repositorio oficial de MASSGRAVE o en su defecto compra una licencia digitan en microsoft:

👉 **[@massgravel/Microsoft-Activation-Scripts](https://github.com/massgravel/Microsoft-Activation-Scripts)**
👉 **[Comprar Office 2024 - Microsoft Store](https://www.microsoft.com/en-us/microsoft-365/get-started-with-office-2024)

## 🛠️ Mejoras Futuras

- [ ] Detección automática de conexión a Internet
- [ ] Validación de archivos de instalación antes de ejecutar
- [ ] Descarga automática de archivos de configuración
- [ ] Logs de instalación detallados
- [ ] Interfaz gráfica opcional

## 📄 Licencia

Este proyecto es de código abierto. Úsalo bajo tu propia responsabilidad.

## ⚠️ Disclaimer

Este script es una herramienta de automatización. Asegúrate de contar con las licencias apropiadas de Microsoft Office antes de instalarlo.

---

**Contribuciones son bienvenidas** 🎉 - Siéntete libre de abrir un *issue* o enviar un *pull request*.
