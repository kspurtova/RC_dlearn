FROM ubuntu:22.04
FROM python:3.7

RUN pip3 install --upgrade pip setuptools wheel
RUN pip3 install --upgrade pip

WORKDIR /home/docker_user

RUN python3.7 -m pip install scikit-learn==0.22.1
RUN pip install scipy

ADD timeseriesrc 2
ENTRYPOINT python3 test.py