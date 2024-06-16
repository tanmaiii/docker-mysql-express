# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy the Nginx configuration file
#COPY nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/conf.d/docker-tanmai.id.vn.conf /etc/nginx/conf.d/docker-tanmai.id.vn.conf


# Expose port 80
EXPOSE 80

