FROM python:latest

WORKDIR /usr/local/bin

COPY loky.py .

CMD ["python", "loky.py"]

