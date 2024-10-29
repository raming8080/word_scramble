# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy the HTML, CSS, and wordlist files to the Nginx HTML directory
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY wordlist.txt /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]