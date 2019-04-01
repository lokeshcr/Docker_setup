FROM python:3

ADD abc.py /

RUN pip install pystrich

CMD [ "python", "./abc.py" ]
