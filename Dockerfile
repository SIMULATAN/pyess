FROM python:3.8

WORKDIR /app

COPY pyess pyess
COPY setup.py README.rst ./

RUN ls

RUN python setup.py install

USER 1000:1000

ENTRYPOINT ["python", "pyess/essmqtt.py"]
