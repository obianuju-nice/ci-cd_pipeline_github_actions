FROM nginx:latest
WORKDIR /nginx-dir
# Copy your custom HTML files to the container file system
COPY index.html /usr/share/nginx/html
#  Expose port 80 for the web server
EXPOSE 80
# Start the Apache server
CMD ["nginx", "-g daemon off"]


# Use the official Apache image
# FROM httpd:2.4

# WORKDIR /nickos-app

# # Copy your custom HTML files to the container
# COPY index.html /var/www/html

# # Expose port 80 for the web server
# EXPOSE 80

# # Start the Apache server
# CMD ["httpd-foreground"]


 #  Only for installing
# FROM ubuntu:latest               
# WORKDIR /nice-web
# COPY index.html /usr/bin/nice
# RUN apt-get update && \
#     apt-get install -y git && \
#     apt-get install -y python3.10 
# CMD ["/bin/bash"]



# # Stage 1: Build Stage with As Builder
# FROM FROM httpd:2.4 AS builder
# WORKDIR /app/nice-app
# COPY . .
# RUN 

# # Stage 2: Production Stage
# FROM alpine:latest
# WORKDIR /app
# COPY --from=builder /app/nice-app .
# CMD ["./nice-app"]