requiere que home brew se encuentre instalado en la mac
luego instalar ansible usando `brew install ansible`
luego lanzar el comando de isntalación: `ansible-playbook -i localhost, -c local install.yml --ask-become-pass`
copia la clave ssh y agregala al usuario de github.
