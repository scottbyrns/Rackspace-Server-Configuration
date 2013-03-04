# Update aptitude first
sudo apt-get update
 
# Install GIT
sudo apt-get -y install git

# Clone the sever configuration scripts from GitHub
git clone https://github.com/UreaBurns/Rackspace-Server-Configuration.git
 
# Open your server configuration working copy
cd Rackspace-Server-Configuration/
 
# Make all of the scripts inside executable
chmod 755 *

# Install Jenkins
./install-java-enviornment.sh
