FROM openjdk:17.0.2-jdk

WORKDIR /app

COPY target/jenk.jar /app/JenkApplication.jar

ENTRYPOINT ["java","-jar","/app/JenkApplication.jar"]

