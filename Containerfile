# Use the official nginx image as base
FROM nginx:alpine

# Remove the default nginx index page
RUN  rm -rf /usr/share/nginx/html/*

# Copy our html file into nginx's web directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80