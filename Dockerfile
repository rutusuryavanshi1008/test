# Dockerfile for serving a static HTML file
FROM nginx:stable-alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy the HTML file into the nginx html directory
COPY ci-cd-sample.html /usr/share/nginx/html/index.html

# Expose default HTTP port
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
