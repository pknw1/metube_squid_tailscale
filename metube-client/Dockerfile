FROM ghcr.io/alexta69/metube:latest as builder

FROM tailscale/tailscale:latest
ADD https://raw.githubusercontent.com/alexta69/metube/refs/heads/master/Pipfile .
ADD https://raw.githubusercontent.com/alexta69/metube/refs/heads/master/Pipfile.lock . 
RUN apk add --update py3-pip nodejs npm python3 ffmpeg aria2 coreutils shadow su-exec curl tini && \
    apk add --update --virtual .build-deps gcc g++ musl-dev && \
    pip install --no-cache-dir pipenv && \
    pipenv install --system --deploy --clear 
RUN pip uninstall pipenv -y && \
    apk del .build-deps && \
    rm -rf /var/cache/apk/* && \
    mkdir /.cache && chmod 777 /.cache
RUN apk add --no-cache ca-certificates iptables iproute2 ip6tables
COPY --from=builder /app /app
RUN mkdir /tailscale 
RUN mv /usr/local/bin/containerboot /usr/local/bin/tailscaleboot
COPY ./metube.sh /usr/local/bin/containerboot
RUN chmod +x /usr/local/bin/containerboot
