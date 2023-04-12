FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/Block_port_external_communication/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache --update \
    py3-pip \
    && rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r Block_port_external_communication/requirements.txt


ENTRYPOINT ["python","Block_port_external_communication/block_port_for_external_communication.py"]