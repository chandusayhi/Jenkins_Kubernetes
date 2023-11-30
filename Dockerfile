# Use the official CentOS Apache HTTP Server image
FROM centos/httpd

# Download and unzip the web content
ADD ./photogenic /var/www/html/
WORKDIR /var/www/html
RUN yum install -y unzip && unzip photogenic.zip && rm photogenic.zip

# Expose port 80 for HTTP
EXPOSE 80

# Start Apache HTTP Server
CMD ["httpd", "-D", "FOREGROUND"]