#
# Build stage
#
FROM maven:3.8.7-eclipse-temurin-19-alpine AS build
COPY . .
RUN mvn clean package -DskipTests

#
# Package stage
#
FROM openjdk:19-alpine
COPY --from=build /target/springTest-0.0.1-SNAPSHOT.jar sprintTest.jar
# ENV PORT=8080
EXPOSE 8080
ENTRYPOINT ["java","-jar","sprintTest.jar"]