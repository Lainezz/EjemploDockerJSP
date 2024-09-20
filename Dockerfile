# Utilizar una imagen base de Tomcat basada en Debian que soporta apt-get
FROM tomcat:10-jdk11-openjdk-slim

# Eliminar la aplicación predeterminada ROOT de Tomcat (opcional)
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Instalar nano utilizando apt-get
RUN apt-get update && \
    apt-get install -y nano && \
    rm -rf /var/lib/apt/lists/*

# Copiar tu carpeta "mi-web" dentro del directorio de aplicaciones de Tomcat
COPY miApp /usr/local/tomcat/webapps/ROOT

# Exponer el puerto 8080 para acceder al servidor Tomcat
EXPOSE 8080

# Iniciar Tomcat
CMD ["catalina.sh", "run"]