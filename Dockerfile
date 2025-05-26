# Use the official nginx base image
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Remove default nginx index page
RUN rm -rf ./*

# Copy website files into the nginx html directory
COPY index.html .
COPY style.css .
COPY . ./image

# Expose port 80
EXPOSE 80
