FROM openjdk:8-jdk-alpine
VOLUME /tmp
#EXPOSE 8000
RUN apt-get update
RUN apt install maven
RUN mvn clean package
ADD ./target/pruebasopenshiftexample-0.0.1-SNAPSHOT.jar app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]
ENTRYPOINT ["sh","-c","java -jar /app.jar"]