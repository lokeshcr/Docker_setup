FROM python:latest

RUN apt-get update && apt-get install -y python-pip 

RUN apt-get install github

WORKDIR /usr/local/bin

COPY loky.py .

ENTRYPOINT ["python", "loky.py"]

