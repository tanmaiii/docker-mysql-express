# Use the official MySQL image as the base image
FROM mysql:8.0

# Copy the initialization SQL script to the container's entrypoint directory
COPY ./init.sql /docker-entrypoint-initdb.d/

# Thiết lập biến môi trường cho MySQL
ENV MYSQL_DATABASE=DB_NAME
ENV MYSQL_ROOT_PASSWORD=123

EXPOSE 3306