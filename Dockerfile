FROM alpine:3.18.3

COPY /src /src

COPY requirements.txt requirements.txt

COPY entrypoint.sh /entrypoint.sh

RUN apk update && apk add python3 py3-pip && pip3 install -r requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
