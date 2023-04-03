FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/IP-API/

RUN apk update \
&& apk upgrade \
&& apk add --no-cache --update \
py3-pip \
&& rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r IP-API/requirements.txt


ENTRYPOINT ["python","IP-API/IP-API.py"]