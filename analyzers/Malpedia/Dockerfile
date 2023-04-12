FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/Malpedia/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache --update \
    py3-pip \
    git \
    libmagic \
    openssl-dev \
    linux-headers \
    build-base \
    && rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r Malpedia/requirements.txt


ENTRYPOINT ["python","Malpedia/malpedia_analyzer.py"]
