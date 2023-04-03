FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/Elasticsearch/

RUN apk update \
&& apk upgrade \
&& apk add --no-cache --update \
py3-pip \
&& rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r Elasticsearch/requirements.txt


ENTRYPOINT ["python","Elasticsearch/elk.py"]