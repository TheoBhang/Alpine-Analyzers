FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/URLhaus/

RUN apk update \
&& apk upgrade \
&& apk add --no-cache --update \
py3-pip \
&& rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r URLhaus/requirements.txt


ENTRYPOINT ["python","URLhaus/URLhaus_analyzer.py"]