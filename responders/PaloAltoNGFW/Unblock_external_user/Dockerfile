FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/Unblock_external_user/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache --update \
    py3-pip \
    && rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r Unblock_external_user/requirements.txt


ENTRYPOINT ["python","Unblock_external_user/unblock_external_user.py"]