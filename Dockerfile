FROM python:alpine

WORKDIR /opt/demo-app

ADD . /opt/demo-app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

ENV FLASK_APP=app.py

CMD flask run --host=0.0.0.0

