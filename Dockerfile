FROM python:3 

RUN pip install django
RUN pip install django-material-admin
RUN pip install mysqlclient
COPY . .

RUN /bin/sh -c python manage.py migrate

CMD [ "python","manage.py","runserver","127.0.0.1:8000"]