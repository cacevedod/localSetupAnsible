# pre-requisitos

## mac
requiere que home brew se encuentre instalado en la mac

luego instalar ansible usando `brew install ansible`

## windows
requiere la instalación de `winget` y `conEmu` para que funcione correctamente.

Requiere ansible instalado en la maquina

----
# Con Ansible Galaxy
Ejecutar:
```
ansible-galaxy install geerlingguy.homebrew
ansible-galaxy collection install community.general

```

luego lanzar el comando: `ansible-playbook -i localhost, -c local mac/install-galaxy.yml --ask-become-pass`
Este comando te preguntará la constraseña de la maquina.