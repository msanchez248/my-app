# My App
### Creación de imagen
En un sistema con Docker y git instalado lo primero a realizar será clonar el repositorio.
La URL 'https://some.git.service/some_user/my-app.git' corresponde a un falso servicio GIT.
```
$ git clone https://some.git.s…user/my-app.git && cd my-app && sudo docker build -t my-app
```
### Despliegue
```
$ sudo docker run --name infra_cloud -d -p 8080:80 -e SITENAME="site name" my-app
```
La variable entorno `SITENAME` define el título que tendrá la página de la aplicación web.