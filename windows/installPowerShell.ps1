# Instalar herramientas en Windows y configurar
function Restart-PowerShell {
    powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "Start-Process powershell.exe -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File $PROFILE'"
    Exit
}


# Configurar Git branch por defecto main
git config --global init.defaultBranch main

# Configurar Git Correo y usuario globalmente
git config --global user.email "cacevedod@devco.com.co"
git config --global user.name "cacevedod"

# Instalar Node.js usando Chocolatey
choco install nodejs-lts -y

# Instalar Python 3.10
if (-Not (Test-Path $env:ProgramFiles\Python310\python.exe)) {
    choco install python --version 3.10.1 -y
}

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

Restart-PowerShell

# Instalar Python 3.10
pyenv install 3.10.1

# Establecer Python 3.10 como global
pyenv global 3.10.1

# Instalar Docker Desktop
choco install docker-desktop -y

# Instalar Google Chrome
choco install googlechrome -y

# Instalar Visual Studio Code
choco install vscode -y

# Instalar version 20 de node
nvm install 20

# Instalar Appium 2
npm install -g appium@next

npm install -g @appium/doctor

# Instalar xcuitest
appium driver install xcuitest

# Instalar uiautomator2
appium driver install uiautomator2

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

