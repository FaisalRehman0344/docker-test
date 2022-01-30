FROM openjdk:8
FROM maven
COPY . .
RUN mvn clean package
WORKDIR target/
EXPOSE 8080
ENTRYPOINT ["java","-Xmx500m","-jar","docker-test-0.0.1-SNAPSHOT.jar"]