# pull the official base image
FROM python:3.8.10
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/


EXPOSE 8000  
# start server  
CMD python manage.py runserver 
