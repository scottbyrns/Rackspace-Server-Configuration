apt-get install tomcat6 tomcat6-admin

# Portforward 80 to 8080
iptables -A PREROUTING -t nat -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 8080
