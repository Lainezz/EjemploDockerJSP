# docker-tomcat-tutorial
A basic tutorial on running a web app on Tomcat using Docker

See tutorial here - https://www.softwareyoga.com/docker-tomact-tutorial/

# Steps
* Install [Docker](https://docs.docker.com/install/).
* Clone this repository - $git clone https://github.com/Lainezz/EjemploDockerJSP.git
* cd 'EjemploDockerJSP'
* $docker build -t my-jsp-app .
* $docker run -p 80:8080 my-jsp-app
* http://localhost:80

# Links
[Sample Tomcat web app](https://tomcat.apache.org/tomcat-8.0-doc/appdev/sample/)

# Ejercicios
1. Cambiar el contenido del index.html
2. Cambiar el contenido del hello.jsp
3. (Investigación) Cambiar el contenido del hello.jsp para que obtenga un parámetro pasado por la url e imprima dicho parámetro en la web