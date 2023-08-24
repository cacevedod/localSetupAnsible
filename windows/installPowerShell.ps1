# Configurar Git branch por defecto main
git config --global init.defaultBranch main

# Configurar Git Correo y usuario globalmente
git config --global user.email "cacevedod@devco.com.co"
git config --global user.name "cacevedod"

# Instalar Node.js usando Chocolatey
choco install nodejs-lts -y

# Instalar Python 3.10
choco install python --version 3.10.1 -y

# Instalar NVM para Windows
choco install nvm -y

# Instalar pyenv
choco install pyenv-win -y

# Instalar Java (OpenJDK)
choco install openjdk11 -y

# Configurar JAVA_HOME
[Environment]::SetEnvironmentVariable("JAVA_HOME", "C:\Program Files\OpenJDK\openjdk-11", [EnvironmentVariableTarget]::Machine)

# Agregar pyenv al perfil de PowerShell
$env:PYENV = "C:\ProgramData\chocolatey\lib\pyenv\tools\pyenv-win"
$env:Path = "$env:PYENV\bin;$env:Path"

# Instalar Docker Desktop
choco install docker-desktop -y

# Instalar Google Chrome
choco install googlechrome -y

# Instalar Visual Studio Code
choco install vscode -y

# Instalar Appium Inspector
# Definir la URL del archivo .exe que deseas descargar
$exeUrl = "https://github.com/appium/appium-inspector/releases/download/v2023.8.4/Appium-Inspector-windows-2023.8.4.exe"
# Definir la ruta donde deseas guardar el archivo .exe descargado
$downloadPath = "$env:USERPROFILE\Downloads\Appium-Inspector-windows-2023.8.4.exe"
# Descargar el archivo .exe desde la URL
Invoke-WebRequest -Uri $exeUrl -OutFile $downloadPath
# Ejecutar el archivo .exe descargado
Start-Process -FilePath $downloadPath

# Instalar Minikube
choco install minikube -y

# Instalar AWS CLI utilizando Chocolatey
choco install awscli -y

# Instalar Putty
choco install putty -y

# Instalar intellij
choco install intellijidea-community -y

Write-Host "¡La instalación y configuración en Windows ha finalizado!"

