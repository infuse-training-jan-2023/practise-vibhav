FROM python:latest

WORKDIR /home/vibhav/Desktop/INFUSE/Docker/Python

RUN pip install --no-cache-dir -U numpy 

COPY test.py ./

ENV SCRIPTTYPE=PYTHON

CMD [ "python", "./test.py"]
