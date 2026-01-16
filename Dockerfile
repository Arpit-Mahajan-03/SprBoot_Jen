FROM openjdk:17.0.2-jdk

WORKDIR /app

COPY target/jenk-0.0.1-SNAPSHOT.jar /app/JenkApplication.jar

ENTRYPOINT ["java","-jar","/app/JenkApplication.jar"]

