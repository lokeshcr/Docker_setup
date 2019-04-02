FROM python:3

ADD abc.py /

RUN pip install pystrich

ENTRYPOINT [ "python", "./abc.py" ]

CMD [ "python", "./abc.py" ]

ENTRYPOINT [ "sh", "-c", "echo $HOME" ]
