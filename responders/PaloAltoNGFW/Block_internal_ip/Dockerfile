FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/Block_internal_ip/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache --update \
    py3-pip \
    && rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r Block_internal_ip/requirements.txt


ENTRYPOINT ["python","Block_internal_ip/block_internal_ip.py"]