FROM python:3.5.2-alpine
MAINTAINER Michael Twomey <mick@twomeylee.name>

COPY requirements.txt /requirements.txt
RUN pip install -U setuptools pip wheel \
    && pip install -r /requirements.txt

WORKDIR /src

CMD ["pip-compile", "--upgrade", "requirements.in"]
