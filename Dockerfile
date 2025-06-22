FROM maven:3.6.3-jdk-8

RUN apt-get update && \
    apt-get install -y \
        x11-apps \
        libxtst6 \
        graphviz

WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

ENTRYPOINT ["sh", "-c", "exec java -Xmx1024M -Xms512M -jar target/zgrviewer-0.10.1-SNAPSHOT.jar"]
