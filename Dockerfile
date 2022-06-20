FROM maven:3.8.6-openjdk-18-slim AS build

COPY src /home/app/src
COPY pom.xml /home/app

# Building the Service
RUN mvn -f /home/app/pom.xml clean package

FROM openjdk:18-slim
# Getting the just created jar executable
COPY --from=build /home/app/target/authentication-0.0.1-SNAPSHOT.jar authentication-docker.jar

# Exposing it to port 8081
EXPOSE 8081
ENTRYPOINT ["java","-jar","authentication-docker.jar"]
