

FROM ubuntu:16.04
ADD abc.py /

RUN apt-get install pip 

RUN apt-get install python

CMD [ "python", "./abc.py" ]
