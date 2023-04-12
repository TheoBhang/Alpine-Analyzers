FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/Unblock_port_internal_communication/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache --update \
    py3-pip \
    && rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r Unblock_port_internal_communication/requirements.txt


ENTRYPOINT ["python","Unblock_port_internal_communication/unblock_port_for_internal_communication.py"]