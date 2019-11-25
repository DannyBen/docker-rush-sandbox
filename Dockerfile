FROM alpine

RUN apk --no-cache add bash git curl

ENV PS1 "\n\n>> rush-sandbox \W \$ "

WORKDIR /app

RUN curl -s \
    https://raw.githubusercontent.com/DannyBen/rush-cli/master/rush > \
    /usr/local/bin/rush && \
    chmod +x /usr/local/bin/rush
