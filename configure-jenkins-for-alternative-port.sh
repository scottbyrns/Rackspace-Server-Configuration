sed -i 's/HTTP_PORT=8080/HTTP_PORT=8083/g' /etc/default/jenkins

# Portforward 83 to 8083
iptables -A PREROUTING -t nat -i eth0 -p tcp --dport 83 -j REDIRECT --to-port 8083