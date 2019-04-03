FROM python:3.6.1

ADD abc.py /

VOLUME /data

RUN apt-get update

RUN apt-get install python

ENTRYPOINT [ "python", "./abc.py" ]

CMD [ "python", "./abc.py" ]

CMD "Hello Docker"
ENTRYPOINT echo
