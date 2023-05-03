#RUN mvn -version
#COPY src /home/app/src
#COPY pom.xml /home/app
#RUN mvn -f /home/app/pom.xml clean
#RUN mvn -f /home/app/pom.xml clean package
#ADD ./home/app/target/pruebasopenshiftexample-0.0.1-SNAPSHOT.jar app.jar
FROM openjdk:8-jdk-alpine
FROM maven:latest
VOLUME /tmp
#EXPOSE 8000
#RUN addgroup -S spring && adduser -S spring -G spring
#USER spring:spring
#RUN apt-get update && apt-get install -y maven
#RUN mvn clean package
#ADD --from=builder ./target/pruebasopenshiftexample-0.0.1-SNAPSHOT.jar app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]
ENTRYPOINT ["sh","-c","java -jar /app.jar"]
