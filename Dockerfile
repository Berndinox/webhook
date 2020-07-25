FROM ncarlier/webhookd
RUN apk update && apk upgrade && \
    apk add --no-cache git wget
COPY execute.sh /var/opt/webhookd/scripts
