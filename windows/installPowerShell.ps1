# Instalar herramientas en Windows y configurar

# Instalar Git
choco install git -y

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

# Agregar Python 3.10 al PATH
$pythonPath = "$env:ProgramFiles\Python310"
if ($env:Path -notlike "*$pythonPath*") {
    $newPath = "$pythonPath;$env:Path"
    [Environment]::SetEnvironmentVariable("Path", $newPath, [EnvironmentVariableTarget]::Machine)
}

# Instalar NVM para Windows
choco install nvm -y

# Instalar pyenv
choco install pyenv-win -y

# Instalar Java (OpenJDK)
choco install openjdk11 -y

# Configurar JAVA_HOME
[Environment]::SetEnvironmentVariable("JAVA_HOME", "C:\Program Files\OpenJDK\openjdk-11", [EnvironmentVariableTarget]::Machine)

# Establecer versión de Java por defecto
pyenv.bat global 11

# Instalar Docker Desktop
choco install docker-desktop -y

# Esperar a que Docker Desktop se inicie
Start-Sleep -Seconds 30 # Ajusta este tiempo si es necesario

# Instalar Google Chrome
if (-Not (Test-Path "$env:ProgramFiles\Google\Chrome\Application\chrome.exe")) {
    choco install googlechrome -y
}

# Instalar Visual Studio Code
if (-Not (Test-Path "$env:ProgramFiles\Microsoft VS Code\Code.exe")) {
    choco install vscode -y
}

# Instalar Appium 2
npm install -g appium@next

# Instalar xcuitest
appium driver install xcuitest

# Instalar uiautomator2
appium driver install uiautomator2

# Instalar Appium Inspector
if (-Not (Test-Path "C:\Program Files (x86)\Appium\Appium.exe")) {
    choco install appium -y
}

# Instalar Minikube
if (-Not (Test-Path "$env:ProgramData\chocolatey\bin\minikube.exe")) {
    choco install minikube -y
}

# Instalar AWS CLI utilizando Chocolatey
$awsCliInstalled = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -eq "Amazon AWS CLI" }
if (-Not $awsCliInstalled) {
    choco install awscli -y
}

# Instalar warp
if (-Not (Test-Path "C:\Program Files\Fusion Warp\Warp.exe")) {
    choco install warp -y
}

# Instalar trello
if (-Not (Test-Path "C:\Program Files\Trello\trello.exe")) {
    choco install trello -y
}

Write-Host "¡La instalación y configuración en Windows ha finalizado!"
