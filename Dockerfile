FROM python:3
ADD abc.py /

VOLUME /data
// RUN pip install --upgrade pip
RUN pip install pandas

ENTRYPOINT [ "python", "./abc.py" ]

CMD [ "python", "./abc.py" ]

CMD "Hello Docker"
ENTRYPOINT echo
