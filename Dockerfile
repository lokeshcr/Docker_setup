FROM python:latest

WORKDIR /usr/local/bin

COPY loky.py .

ENTRYPOINT ["python", "loky.py"]

