# Use an official Nginx runtime as a parent image
FROM nginx

# Copy the custom Nginx configuration file (if needed)
# COPY nginx.conf /etc/nginx/nginx.conf

# Copy the static web page files into the default Nginx HTML directory
COPY html /usr/share/nginx/html

# Copy the wrapper script and make it executable
COPY wrapper.sh /
RUN chmod +x /wrapper.sh

# Expose port 80 for HTTP traffic (Nginx default)
EXPOSE 80

# Start Nginx using the wrapper script
CMD ["/wrapper.sh"]
