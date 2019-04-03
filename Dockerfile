FROM python:3.6.1

ADD abc.py /

RUN pip install pandas

ENTRYPOINT [ "python", "./abc.py" ]

CMD [ "python", "./abc.py" ]
