FROM tiangolo/uwsgi-nginx-flask:python3.7-2019-10-14

MAINTAINER tony edogiawerie "tonnyed@hotmail.com"
COPY . /app
WORKDIR /app
ENV PYTHONPATH=/app
RUN pip install -r /app/requirements.txt






