FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/Yara/

RUN apk add --no-cache bash \
    py3-pip \
    alpine-sdk  \
    make \
    cmake \
    boost-dev \
    openssl-dev \
    build-base \
    && rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r Yara/requirements.txt


ENTRYPOINT ["python","Yara/yara_analyzer.py"]