FROM python:3.6.4-jessie
WORKDIR /opt/demo-app
ADD . /opt/demo-app
RUN pip install -r requirements.txt
EXPOSE 5000
ENV FLASK_APP=app.py
CMD flask run

