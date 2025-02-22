FROM tailscale/tailscale:latest
RUN apk add --no-cache squid ca-certificates iptables iproute2 ip6tables
RUN mkdir /tailscale 
RUN mv /usr/local/bin/containerboot /usr/local/bin/tailscaleboot
COPY ./squid.sh /usr/local/bin/containerboot
RUN chmod +x /usr/local/bin/containerboot

