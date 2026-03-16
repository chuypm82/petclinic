FROM eclipse-temurin:17-jdk-jammy
WORKDIR /app
COPY target/pet-clinic-1.0.0.jar pet-clinic-1.0.0.jar
EXPOSE 8082
ENTRYPOINT ["java","-jar","pet-clinic-1.0.0.jar"]