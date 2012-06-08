#
# Jenkins Install For Debian Squeeze
#

# Add the jenkins key to apt
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -

# Append the jenkins source to the apt sources list.
echo "deb http://pkg.jenkins-ci.org/debian binary/" >> /etc/apt/sources.list

apt-get update
apt-get install jenkins
