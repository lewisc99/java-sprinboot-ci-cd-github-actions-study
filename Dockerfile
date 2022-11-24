FROM openjdk:11
EXPOSE 1500

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y maven

COPY  ./ ./app
RUN mvn -f ./app/pom.xml clean package
CMD ["java","-jar","./app/target/limits-service.jar"]
