# Use an official Nginx image
FROM nginx:alpine

# Copy project files into the container
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY main.js /usr/share/nginx/html/
COPY img/ /usr/share/nginx/html/img/

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]