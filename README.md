# Automatización con Ansible – Práctica 3.1 a 3.3

Este documento describe los pasos realizados en la práctica de automatización usando Ansible, desde la provisión de máquinas virtuales hasta la instalación de Apache y la configuración de un sitio web básico.

---
## 3.1 – Provisionar una máquina virtual Ubuntu 24.04 en VirtualBox con Terraform

Se utilizó Terraform para crear una VM con Ubuntu 24.04 automáticamente en VirtualBox.

- Se creó un archivo `main.tf` con la definición de la máquina virtual, incluyendo:
  - Nombre, CPU, RAM, disco
  - Imagen ISO
  - Configuración de red

> 📷 **Captura del código Terraform:**
> ![](/img/maintf.JPG)
- Comandos utilizados:
  - terraform init
  ![](/img/terraform_init.JPG)
  - terraform apply
  ![](/img/terraformapply.JPG)

  **RESULTADO FINAL**
  ![](/img/terrafuncionando.JPG)
  
## 3.2 – Configurar VM Ubuntu 24.04 con Ansible: update, upgrade e instalar Apache
### 3.2.1 - Archivo de inventario (hosts)
Crea un archivo llamado `hosts` con el siguiente contenido. Asegúrate de reemplazar la IP por la correspondiente a tu VM:
![](/img/CreacionHosts.JPG)
### 3.2.2 - Playbook para actualizar e instalar Apache
Guarda el siguiente contenido en un archivo llamado setup_apache.yml
![](/img/ArchivoYML.JPG)

Ejecutar el playbook:
![](/img/tareasansible2.JPG)

### Errores que he tenido en este apartado
- Instalar SSHPASS, sino, no permite que hagan ssh a la maquina de terraform + ansible
  ![](/img/instalamosSSHPASS.JPG)
- Gracias a chatgpt, he solucionado un error, ya que con contraseña no nos permita por defecto,  he creado una llave publica y la he compartido con la maquina ansible
  ![](/img/ChatGPT.JPG)
  
## 3.3 – Configurar una máquina virtual Ubuntu 24.04 en Virtualbox mediante Ansible.
### 3.3.1 - Crear un archivo index.html
Guarda el siguiente contenido en un archivo llamado create_index.yml
![](/img/CrearIndex.JPG)
### 3.3.2 - Ejecutar el playbook:
![](/img/index_ejecutado.JPG)
### 3.3.3 - Verificar con curl
Desde el host o cualquier máquina que tenga acceso a la VM, ejecuta
![](/img/Curl.JPG)

