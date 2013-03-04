# Install CI utilities
./install-ci-utilities.sh

# Install utilities to make things more human relatable.
./install-human-utilities.sh

# Install Java
./install-sun-java.sh

# Install Tomcat 6
./install-tomcat6.sh
./configure-tomcat6-default-users.sh

# Install Jenkins
./install-jenkins.sh
./configure-jenkins-for-alternative-port.sh