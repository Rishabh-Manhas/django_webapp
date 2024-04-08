FROM python:3.9

RUN mkdir -p /home/app/django_app

WORKDIR /home/app/django_app

RUN pip install --upgrade pip

COPY ./myproject/ ./

RUN pip install -r requirements.txt

EXPOSE 8080

CMD python manage.py runserver 0.0.0.0:8080

