#!/bin/bash
#!/bin/bash

# Update packages
sudo yum update -y  # Use apt-get for Ubuntu: sudo apt-get update -y

# Install Apache HTTP Server
sudo yum install -y httpd  # Use: sudo apt-get install -y apache2 for Ubuntu

# Enable and start Apache
sudo systemctl enable httpd
sudo systemctl start httpd

# Create a basic web page
echo "<html><h1>Welcome to EC2 Web Server</h1></html>" | sudo tee /var/www/html/index.html

# Get public IP address
IP=$(curl -s http://169.254.169.254/latest/meta-data/public-ipv4)

# Show IP address
echo "Web server is running. Access it at: http://$IP/"
# This is a comment
# This is done my main branch
