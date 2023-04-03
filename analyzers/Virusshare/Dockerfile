FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/Virusshare/

RUN apk update \
&& apk upgrade \
&& apk add --no-cache --update \
py3-pip \
&& rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r Virusshare/requirements.txt


ENTRYPOINT ["python","Virusshare/virusshare.py"]