FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/Urlscan.io/

RUN apk update \
&& apk upgrade \
&& apk add --no-cache --update \
py3-pip \
&& rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r Urlscan.io/requirements.txt


ENTRYPOINT ["python","Urlscan.io/urlscan_analyzer.py"]