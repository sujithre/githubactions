FROM openjdk:8-jre-alpine

EXPOSE 8080

# Ensure the build/libs directory exists before copying
RUN mkdir -p /build/libs

COPY ./build/libs/my-app-1.0-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
