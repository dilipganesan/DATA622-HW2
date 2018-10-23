FROM python:3.7

RUN apk update && apk upgrade && \
    apk add --no-cache git

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN git clone https://github.com/dilipganesan/DATA622_BigData-and-Machine-Learning/tree/master/Home%20Work%202 /usr/src/app/hw3

CMD [ "python", "/usr/src/app/hw3/app.py" ]