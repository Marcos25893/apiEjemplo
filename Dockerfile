FROM docker.io/eclipse-temurin:25-jre-jammy
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]

# podman build -t springapiejemplo:1.0 .
# podman image list
# podman run -p 8080:8080 --network=host --name springapp -d -t springapiejemplo:1.0
# podman stop springapp
# podman start springapp
# podman stats
# podman logs -f springapp
# podman rm springapp
# docker login
# podman tag springbootapp:1.0 alansastre/springapiejemplo:1.0
# podman push alansastre/springbootapp:1.0

# Desde un servidor:
# podman pull alansastre/springbootapp:1.0
# podman run -p 8080:8080 --name springapp -d -t alansastre/springbootapp:1.0
# podman rmi alansastre/springbootapp:1.0


#Pasos para desplegarlo en Amazon EC2
#Subir al repositorio
#Bajarse los cambios del repositorio
#Generar un nuevo jar con (./gradlew bootJar)
#borrar contenedor de spring y volver a crear otro podman build -t springapiejemplo:1.0 .