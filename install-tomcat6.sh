apt-get -y install tomcat6 tomcat6-common tomcat6-docs tomcat6-admin tomcat6-user

# Portforward 80 to 8080
iptables -A PREROUTING -t nat -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 8080
