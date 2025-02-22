FROM tailscale/tailscale:latest
RUN apk add --no-cache squid ca-certificates iptables iproute2 ip6tables
RUN mkdir /tailscale 
RUN mv /usr/local/bin/containerboot /usr/local/bin/tailscaleboot
ADD ./squid.sh /usr/local/bin/containerboot
RUN chmod +x /usr/local/bin/containerboot
RUN sed -i 's/http_access deny all/http_access allow all/g' /etc/squid/squid.conf
