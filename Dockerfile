FROM openjdk:21.0.9-jdk

WORKDIR /app

COPY target/jenk.jar /app/JenkApplication.jar

ENTRYPOINT ["java","-jar","/app/JenkApplication.jar"]

