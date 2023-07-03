# Dockerfile
FROM gcc:latest
WORKDIR /app
COPY . .
RUN gcc -o hello main.c
CMD ["./hello"]
