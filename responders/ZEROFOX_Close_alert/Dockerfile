FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/ZEROFOX_Close_alert/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache --update \
    py3-pip \
    && rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r ZEROFOX_Close_alert/requirements.txt


ENTRYPOINT ["python","ZEROFOX_Close_alert/ZEROFOX_Close_alert.py"]