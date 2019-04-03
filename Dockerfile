FROM python:3.6.1

ADD abc.py /

VOLUME /data

RUN sudo apt-get update

RUN sudo apt-get install python

ENTRYPOINT [ "python", "./abc.py" ]

CMD [ "python", "./abc.py" ]

CMD "Hello Docker"
ENTRYPOINT echo
