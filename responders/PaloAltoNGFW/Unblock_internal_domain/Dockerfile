FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/Unblock_internal_domain/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache --update \
    py3-pip \
    && rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r Unblock_internal_domain/requirements.txt


ENTRYPOINT ["python","Unblock_internal_domain/unblock_internal_domain.py"]