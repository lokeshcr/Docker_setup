FROM python:latest

WORKDIR /usr/local/bin

COPY abc.py .

CMD ["abc.py"]

