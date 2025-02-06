# Use the official Nginx image as the base image
FROM nginx:alpine

# Add a label to the image
LABEL Ahmed ELshandidy

# Copy the website files into the image
COPY website /website
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 so the container can be accessed
EXPOSE 80

