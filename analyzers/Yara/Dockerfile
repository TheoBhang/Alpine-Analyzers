FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/Yara/

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
    pip install --no-cache-dir -r Yara/requirements.txt


ENTRYPOINT ["python","Yara/yara_analyzer.py"]