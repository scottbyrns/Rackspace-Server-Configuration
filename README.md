# Basic Configuration
Our basic configuration will be done with a series of pre baked install scripts available on GitHub. These scripts will get us a fresh install of Jenkins that is configured and ready for CI.

## Prerequisites
To begin we will need to install GIT on our Debian server.
```
# Update aptitude first
sudo apt-get update

 
# Install GIT
sudo apt-get install git
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

## Installing Setup Scripts
### CI Utilities
This mainly installs Maven but should be expanded to include other CI utilities for other languages and platforms.
```
# Install CI utilities
./install-ci-utilities.sh
```

### Utilities to make the server easier to manage by people
Mainly VIM. Needs an uninstall script so admins can clean up after maintenance.
```
# Install utilities to make things more human relatable.
./install-human-utilities.sh
```

### Sun Java 6
You must update /etc/apt/sources.list to include non-free sources.
```
# Install Java
# IMPORTANT: You must follow the instructions in this bash script before running it.
# You must edit /etc/apt/sources.list to include non free sources.
./install-sun-java.sh
``` 
 
### Tomcat 6
The application server that Jenkins will run in. Can be used for other internal web applications.
```
# Install Tomcat 6
./install-tomcat6.sh
```

### Jenkins
Jenkins is the CI server.
```
# Install Jenkins
./install-jenkins.sh
```
