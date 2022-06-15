FROM masstroy/alpine-docker-java-maven
VOLUME /tmp
#EXPOSE 8000
#RUN addgroup -S spring && adduser -S spring -G spring
#USER spring:spring
#RUN apt-get update && apt-get install -y maven
RUN mvn clean package
ADD ./target/pruebasopenshiftexample-0.0.1-SNAPSHOT.jar app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]
ENTRYPOINT ["sh","-c","java -jar /app.jar"]