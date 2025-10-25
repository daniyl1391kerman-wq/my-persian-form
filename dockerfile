FROM alpine:latest

RUN apk add --no-cache wget unzip
RUN wget https://github.com/pocketbase/pocketbase/releases/download/v0.22.12/pocketbase_0.22.12_linux_amd64.zip \
    && unzip pocketbase_0.22.12_linux_amd64.zip \
    && chmod +x /pocketbase

EXPOSE 10000

CMD ["/pocketbase", "serve", "--http=0.0.0.0:10000"]
