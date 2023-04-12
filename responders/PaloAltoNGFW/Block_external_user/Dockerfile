FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/Block_external_user/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache --update \
    py3-pip \
    && rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r Block_external_user/requirements.txt


ENTRYPOINT ["python","Block_external_user/block_external_user.py"]