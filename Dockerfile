FROM python:3

WORKDIR /usr/src/app


RUN pip install --no-cache-dir

COPY . .

CMD [ "python", "./your-daemon-or-script.py" ]
