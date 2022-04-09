FROM python:3.10-alpine

ENV PYTHONDONTWRITEBYTECODE 1

ENV PYTHONUNBUFFERED 1

RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev

WORKDIR /code

COPY . /code/

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

EXPOSE 8000
