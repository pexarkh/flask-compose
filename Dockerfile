FROM python:3

EXPOSE 5000

RUN mkdir /app
WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

COPY . /app

ENV FLASK_APP=flask-compose.py
CMD flask run --host=0.0.0.0
