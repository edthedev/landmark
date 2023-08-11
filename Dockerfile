# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /python-docker

COPY ./container .
RUN pip3 install -r requirements.txt

EXPOSE 5000

# gunicorn -b 0.0.0.0:5000 'app:app'
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]