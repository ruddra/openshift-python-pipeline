FROM python:3.6
ENV PYTHONUNBUFFERED 1

ADD . /src
WORKDIR /src
RUN pip install -r requirements.pip
RUN python manage.py migrate

CMD gunicorn openshift_django.wsgi -b 0.0.0.0:3013

EXPOSE 3013
