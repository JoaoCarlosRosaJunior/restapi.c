# Use the latest GCC image from Docker Hub as the base image
FROM gcc:latest

# Copy all files from the current directory on the host into the /app directory in the Docker container
COPY . /app

# Set the current directory inside the Docker container
WORKDIR /app

# Compile the C code
RUN gcc -o server server.c

# Run the compiled code when the Docker container is started
CMD ["./server"]
