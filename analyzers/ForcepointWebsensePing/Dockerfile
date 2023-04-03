FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/ForcepointWebsensePing/

RUN apk update \
&& apk upgrade \
&& apk add --no-cache --update \
py3-pip \
&& rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r ForcepointWebsensePing/requirements.txt


ENTRYPOINT ["python","ForcepointWebsensePing/forcepointwebsenseping.py"]