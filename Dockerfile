FROM almir/webhook
RUN apk update && apk upgrade && \
    apk add --no-cache git wget
COPY hook.json /etc/webhook
