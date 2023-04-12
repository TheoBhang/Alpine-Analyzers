FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/RT4/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache --update \
    py3-pip \
    && rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r RT4/requirements.txt


ENTRYPOINT ["python","RT4/rt4.py"]