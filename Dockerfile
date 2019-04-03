

FROM ubuntu:16.04
ADD abc.py /

RUN apt-get install python
RUN apt-get install pip 

CMD [ "python", "./abc.py" ]
