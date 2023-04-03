FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/Crowdsec/

RUN apk update \
&& apk upgrade \
&& apk add --no-cache --update \
py3-pip \
&& rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r Crowdsec/requirements.txt


ENTRYPOINT ["python","Crowdsec/crowdsec_analyzer.py"]