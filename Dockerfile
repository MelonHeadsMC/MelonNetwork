# Base image with Java 8
FROM openjdk:8-jdk-alpine

# Working directory inside container
WORKDIR /server

# Download latest EaglerXBungee
ADD https://github.com/EaglercraftX/EaglerXBungee/releases/latest/download/EaglerXBungee.jar /server/eaglerxbungee.jar

# Environment variables (can override in Render)
ENV SERVER="fi-01.freezehost.pro:9575"
ENV MOTD="&aEaglercraft 1.12.2 Server"
ENV MAX_PLAYERS=100

# Expose Eaglercraft default port
EXPOSE 25565

# Start EaglerXBungee, linking to your FreezeHost server
CMD ["sh", "-c", "java -Xmx2G -Xms1G -jar eaglerxbungee.jar --server $SERVER --motd '$MOTD' --max-players $MAX_PLAYERS"]
