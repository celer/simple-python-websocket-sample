FROM debian:latest

RUN apt-get update
RUN apt-get install -y unzip python-pip python-dev wget

RUN wget https://github.com/celer/simple-python-websockets-example/archive/master.zip
RUN unzip master.zip

RUN pip install 'twisted<16.3.0'
RUN pip install autobahn

EXPOSE 8080

CMD (cd simp* && python server.py)




