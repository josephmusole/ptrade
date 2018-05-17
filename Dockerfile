FROM openjdk:8

WORKDIR /data/BankService

ADD development.yml /data/BankService/development.yml
ADD target/bank-service-1.0-SNAPSHOT.jar /data/BankService/bank-service-1.0-SNAPSHOT.jar

EXPOSE 8080 8081
ENTRYPOINT ["java", "-jar", "bank-service-1.0-SNAPSHOT.jar", "server", "development.yml"]