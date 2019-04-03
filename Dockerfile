FROM python:3.6.1

ADD abc.py /

VOLUME /data

RUN apt-get install python

RUN apt-get update && apt-get install python-pip

ENTRYPOINT [ "python", "./abc.py" ]

CMD [ "python", "./abc.py" ]

CMD "Hello Docker"
ENTRYPOINT echo
