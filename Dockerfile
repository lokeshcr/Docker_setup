FROM python:3.6.1

ADD abc.py /

VOLUME /data

RUN pip install anaconda

ENTRYPOINT [ "python", "./abc.py" ]

CMD [ "python", "./abc.py" ]

CMD "Hello Docker"
ENTRYPOINT echo
