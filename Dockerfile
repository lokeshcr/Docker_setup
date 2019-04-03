FROM python:3

ADD abc.py /

RUN pip install pandas

ENTRYPOINT [ "python", "./abc.py" ]

CMD [ "python", "./abc.py" ]

CMD "Hello Docker"

ENTRYPOINT echo
