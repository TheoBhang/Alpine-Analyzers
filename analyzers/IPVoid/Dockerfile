FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/IPVoid/

RUN apk update \
&& apk upgrade \
&& apk add --no-cache --update \
py3-pip \
&& rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r IPVoid/requirements.txt


ENTRYPOINT ["python","IPVoid/ipvoid.py"]