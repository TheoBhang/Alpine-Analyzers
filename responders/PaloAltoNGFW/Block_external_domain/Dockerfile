FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/Block_external_domain/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache --update \
    py3-pip \
    && rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r Block_external_domain/requirements.txt


ENTRYPOINT ["python","Block_external_domain/block_external_domain.py"]