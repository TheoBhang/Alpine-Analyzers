FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/Block_internal_user/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache --update \
    py3-pip \
    && rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r Block_internal_user/requirements.txt


ENTRYPOINT ["python","Block_internal_user/block_internal_user.py"]