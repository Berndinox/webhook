FROM ncarlier/webhookd
RUN apk update && apk upgrade && \
    apk add --no-cache git wget
COPY script.sh /var/opt/webhookd/scripts
