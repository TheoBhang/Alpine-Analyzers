FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/ThreatResponse/

RUN apk update \
&& apk upgrade \
&& apk add --no-cache --update \
py3-pip \
&& rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r ThreatResponse/requirements.txt


ENTRYPOINT ["python","ThreatResponse/ThreatResponse.py"]