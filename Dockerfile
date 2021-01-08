#FROM openjdk:8-jdk-alpine
FROM maven:3.3-jdk-8-alpine AS compile_build
COPY . compile/
RUN mkdir -p compile; cd compile; mvn clean package;

FROM openjdk:8-jdk-alpine
COPY --from=compile_build  compile/target/reverse-proxy-1.0.0-SNAPSHOT.jar app.jar
CMD ["java", "-jar" ,"app.jar"]
