# pre-requisitos

## MacOS
requiere que home brew se encuentre instalado en la mac

luego instalar ansible usando `brew install ansible`

Luego instala git para descargar el repositorio:
`brew install git`

Posteriormente lanzar el comando de ansible, estando ubicado en la ruta donde descargaste el repo:
`ansible-playbook -i localhost, -c local mac/install-galaxy.yml --ask-become-pass`
Este comando te preguntará la constraseña de la maquina.

### Queda faltando para instalación y configuración manual:
- Alfred
- Urban VPN Desktop
- warp terminal
- VirtualBox (porque para m1 y m2 no corre OK)
----
## Linux Ubuntu
Requiere que instales git en la maquina, abres una terminal y lanzas:
```
sudo apt update -y
sudo apt install git -y
```

Instalas Ansible
`sudo apt install ansible -y`
existe la posibilidad de que te pregunte por el area geografica y luego la ciudad, debes responder en cada una con `2` y `29` respectivamente.

Descargas el repo en una ruta y luego en la terminal te ubicas en esta ruta para lanzar el siguiente comando:
`ansible-playbook -i localhost, -c local linux/install-galaxy.yml --ask-become-pass`
Este comando te preguntará la constraseña de la maquina.

----
## Windows
requiere instalado chocolatey en la maquina windows, se hace abriendo una ventana de PowerShell como administrador y lanzar el siguiente comando:
`Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))`

Luego instala git para descargar el repositorio:
`choco install git.install -n`

Ansible no funciona correctamente en Windows, entonces creamos un script de PowerShell para configurar la maquina, para ejcutarlo, abres una consola de PowerShell con permisos de administrador, te ubicas en la ruta donde descargaste el repo y ejecutas:
`Set-ExecutionPolicy Unrestricted`
Das `Sí a todo`
Esto te dará permisos para ejcutar scripts powershell.

Luego lanzas
`.\windows\installPowerShell.ps1`

Cierras la ventana de PowerShell y abres una nuevamente en la ruta y con permisos de administrador, luego ejecutamos:
`.\windows\installPowerShell2.ps1`

----
# Si te pide Ansible Galaxy
Ejecutar:
```
ansible-galaxy install geerlingguy.homebrew
ansible-galaxy collection install community.general

```