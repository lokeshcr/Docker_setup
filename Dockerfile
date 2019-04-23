FROM python:latest

RUN apk add --no-cache python3 py3-pip gcc python3-dev py3-cffi  \
file git curl autoconf automake py3-cryptography linux-headers musl-dev libffi-dev openssl-dev build-base

WORKDIR /usr/local/bin

COPY loky.py .

ENTRYPOINT ["python", "loky.py"]

