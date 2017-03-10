FROM ubuntu:xenial

MAINTAINER Petru-Vasile Avram <avrampv@gmail.com>

###############################################################################
# A Docker image for web dev environment with Python 2.7 and some binary or 
# system dependecies like ffmpeg and postfix
###############################################################################

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq \
    && apt-get install -y \
    postfix \
    ffmpeg \
    python-pip \
    python-dev \
    sqlite3 \
    libsqlite3-dev \
    git \
    build-essential \
    && apt-get clean

RUN pip install --upgrade pip \
    && pip install --upgrade virtualenv

WORKDIR /work
