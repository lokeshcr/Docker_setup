FROM python:2.7.12
ADD abc.py /

VOLUME /data
RUN pip install --upgrade pip
RUN pip install pystrich

ENTRYPOINT [ "python", "./abc.py" ]

CMD [ "python", "./abc.py" ]

CMD "Hello Docker"
ENTRYPOINT echo
