FROM ubuntu:18.04
RUN apt-get update
ADD requirements.txt /tmp/
RUN DEBIAN_FRONTEND=noninteractive apg-get install -y -q python-all python-pip
RUN pip install -qr requirements.txt
ADD app.py /opt/webapp
EXPOSE 5000
