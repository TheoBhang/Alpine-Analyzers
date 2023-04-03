FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/BackscatterIO/

RUN apk update \
&& apk upgrade \
&& apk add --no-cache --update \
py3-pip \
&& rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r BackscatterIO/requirements.txt


ENTRYPOINT ["python","BackscatterIO/backscatter-io.py"]