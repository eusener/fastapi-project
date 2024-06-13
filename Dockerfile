FROM python:3

WORKDIR /application

COPY ./requirements.txt /application/requirements.txt
COPY ./app/ /application/
COPY ./Makefile /application/Makefile
  
RUN pip install --no-cache-dir --upgrade -r /application/requirements.txt
 
CMD ["make", "prod"]