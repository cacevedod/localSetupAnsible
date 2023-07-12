# pre-requisitos

requiere que home brew se encuentre instalado en la mac

luego instalar ansible usando `brew install ansible`

----
# Con Ansible Galaxy
Ejecutar:
```
ansible-galaxy install geerlingguy.homebrew
ansible-galaxy collection install community.general

```

luego lanzar el comando: `ansible-playbook -i localhost, -c local mac/install-galaxy.yml --ask-become-pass`