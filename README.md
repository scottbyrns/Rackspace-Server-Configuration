# Basic Configuration
Our basic configuration will be done with a series of pre baked install scripts available on GitHub. These scripts will get us a fresh install of Jenkins that is configured and ready for CI.

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
git clone https://github.com/UreaBurns/Rackspace-Server-Configuration.git
  
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
