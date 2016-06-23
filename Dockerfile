FROM debian:latest

RUN apt-get update
RUN apt-get install -y unzip python-pip python-dev wget

RUN wget https://github.com/celer/simple-python-websockets-example/archive/master.zip
RUN unzip master.zip
RUN (cd simp* && pip install twisted && pip install autobahn)

EXPOSE 8080

CMD (cd simp* && python server.py)




