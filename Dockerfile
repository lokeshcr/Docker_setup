FROM python:latest

RUN pip install pygithub

WORKDIR /usr/local/bin

COPY loky.py .

ENTRYPOINT ["python", "loky.py"]

