FROM ubuntu:latest

MAINTAINER Remi C

RUN apt update \
&& apt upgrade -y

RUN apt install python3-pip -y

RUN pip install asyncio
RUN pip install aiosmtpd

RUN cd home \
&& mkdir smtp \
&& cd smtp

COPY main.py /home/smtp

EXPOSE 25

WORKDIR /home/smtp
