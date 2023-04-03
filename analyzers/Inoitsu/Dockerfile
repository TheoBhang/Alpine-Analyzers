FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/Inoitsu/

RUN apk update \
&& apk upgrade \
&& apk add --no-cache --update \
py3-pip \
&& rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r Inoitsu/requirements.txt


ENTRYPOINT ["python","Inoitsu/inoitsu_analyzer.py"]