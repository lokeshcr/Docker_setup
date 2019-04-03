FROM python:3

ADD abc.py /

VOLUME /data

RUN pip install numpy

ENTRYPOINT [ "python", "./abc.py" ]

CMD [ "python", "./abc.py" ]

CMD "Hello Docker"
ENTRYPOINT echo
