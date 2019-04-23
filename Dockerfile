FROM python:latest

RUN apt-get update && apt-get install -y python-pip 

WORKDIR /usr/local/bin

COPY loky.py .

ENTRYPOINT ["python", "loky.py"]

