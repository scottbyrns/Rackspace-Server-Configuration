# Basic Configuration
The following procedure is prepared for a fresh Debian 6 instance in the Rackspace cloud.
This script will install Tomcat 6, Java 6, Jenkins, Maven 2, and vim.

Tomcat will run on Ports 80 and 8080
Jenkins will run on Ports 83 and 8083

## Prerequisites
To begin we will need to install GIT on our Debian server.
```
# Update aptitude first
sudo apt-get update
 
# Install GIT
sudo apt-get -y install git
```

## Obtaining Setup Scripts
Next we will clone our CI setup scripts from GitHub.
```
# Clone the sever configuration scripts from GitHub
git clone https://github.com/scottbyrns/Rackspace-Server-Configuration.git
  
# Open your server configuration working copy
cd Rackspace-Server-Configuration/
  
# Make all of the scripts inside executable
chmod 755 *
```


### Setup
This script will setup Tomcat 6, Jenkins, Java 6, and Vim.

Jenkins will be configured to run on ports 83 and 8083.
Tomcat will be configured to run on ports 80 and 8080.

Tomcat is preconfigured with a management account for Jenkins deployments.
Username: jenkins
Password: SLKDJFlkjsdf123

```
# Install Jenkins
./install-java-enviornment.sh
```
