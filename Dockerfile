FROM maven
COPY . .
RUN mvn clean install
ENTRYPOINT [ "mvn","spring-boot:run" ]
#FROM openjdk:19-jdk-alpine3.16
#ARG JAR_FILE=target/*.jar
#COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]
