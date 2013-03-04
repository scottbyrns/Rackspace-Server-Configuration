# Installing Sun Java JDK
#
# Change squeze to non-free in
# /etc/apt/sources.list
#
# deb http://ftp2.de.debian.org/debian squeeze main non-free 
#
# TODO Write a script to set squeeze to non-free sources
#

sed -i 's/main/main non-free/g' /etc/apt/sources.list

apt-get install sun-java6-jdk

echo "JAVA_HOME=\"/usr/lib/jvm/java-6-sun\"" >> /etc/profile
echo "export JAVA_HOME" >> /etc/profile