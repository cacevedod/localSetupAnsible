# pre-requisitos

## mac
requiere que home brew se encuentre instalado en la mac

luego instalar ansible usando `brew install ansible`

Luego instala git para descargar el repositorio:
`brew install git`

Posteriormente lanzar el comando de ansible, estando ubicado en la ruta donde descargaste el repo:
`ansible-playbook -i localhost, -c local mac/install-galaxy.yml --ask-become-pass`
Este comando te preguntará la constraseña de la maquina.
----
## windows
requiere instalado chocolatey en la maquina windows, se hace abriendo una ventana de PowerShell como administrador y lanzar el siguiente comando:
`Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))`

Luego instala git para descargar el repositorio:
`choco install git.install -n`

Descarga la última versión de python y la instalas.
`https://www.python.org/downloads`
Asegurate de hacer check en la opción para que python se cargue en el PATH

Instala ansible:
`pip install ansible`

Posteriormente lanzar el comando de ansible, estando ubicado en la ruta donde descargaste el repo:
`ansible-playbook -i localhost, -c local windows/install-galaxy.yml`

----
# Si te pide Ansible Galaxy
Ejecutar:
```
ansible-galaxy install geerlingguy.homebrew
ansible-galaxy collection install community.general

```