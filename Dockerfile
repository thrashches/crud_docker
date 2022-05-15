FROM python:latest

COPY crud /crud/

# RUN mkdir /crud/

# COPY crud/requirements.txt /crud/requirements.txt

WORKDIR /crud/

RUN pip install -r requirements.txt

RUN pip install gunicorn

# RUN python manage.py migrate

EXPOSE 8000
STOPSIGNAL SIGTERM

# CMD python manage.py runserver 0.0.0.0:8000
