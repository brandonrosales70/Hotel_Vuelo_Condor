# Usar una imagen base de JDK para ejecutar Spring Boot
FROM openjdk:17-jdk-alpine

# Copiar el archivo JAR generado
COPY target/HotelPhegon-0.0.1-SNAPSHOT.jar project-service.jar

# Exponer el puerto configurado
EXPOSE 4040

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "/project-service.jar"]

