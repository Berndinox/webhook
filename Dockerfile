FROM ncarlier/webhookd
RUN apk update && apk upgrade && \
    apk add --no-cache git wget && \
    rm -R /var/opt/webhookd/scripts/*
COPY execute.sh /var/opt/webhookd/scripts
RUN chmod +x /var/opt/webhookd/scripts/execute.sh
