# Linuxowy kontener z openjdk v17
FROM openjdk:17-jdk-slim

# Kopiowanie plikow do kontenera
COPY gs-rest-service-main/complete /app

# Ustawianie workdira w kontenerze
WORKDIR /app

# Zbudowanie aplikacji
RUN ./gradlew bootJar

# Wystawienie portu 8080
EXPOSE 8080

# Uruchomienie aplikacji spring-bootowej przy starcie kontenera
ENTRYPOINT ["java", "-jar", "/app/build/libs/rest-service-0.0.1-SNAPSHOT.jar"]
