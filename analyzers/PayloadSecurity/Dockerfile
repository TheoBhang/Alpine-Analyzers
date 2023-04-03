FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/PayloadSecurity/

RUN apk update \
&& apk upgrade \
&& apk add --no-cache --update \
py3-pip \
&& rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r PayloadSecurity/requirements.txt


ENTRYPOINT ["python","PayloadSecurity/payloadsecurity_analyzer.py"]