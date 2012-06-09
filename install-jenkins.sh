#
# Jenkins Install For Debian Squeeze
#

# Add the jenkins key to apt
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -

# Append the jenkins source to the apt sources list.
echo "deb http://pkg.jenkins-ci.org/debian binary/" >> /etc/apt/sources.list

apt-get update
apt-get install jenkins

# Need to change port configuration in /etc/default/jenkins
# Line 41 should read HTTP_PORT=8090

/etc/init.d/jenkins start

#
# After starting jenkins you must configure Maven2 in the Jenkins System Configuration
# /configure
#
# You will need to install the github plugin.
# /pluginManager/available
#
