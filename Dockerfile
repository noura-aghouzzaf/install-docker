FROM ubuntu
RUN apt-get update
RUN apt-get -y install python python-pip vim
RUN pip install flask
COPY app.py /opt

ENTRYPOINT FLASK_APP=/opt/app flask run --host=0.0.0.0