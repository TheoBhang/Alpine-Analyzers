FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/EmergingThreats/

RUN apk update \
&& apk upgrade \
&& apk add --no-cache --update \
py3-pip \
&& rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r EmergingThreats/requirements.txt


ENTRYPOINT ["python","EmergingThreats/emergingthreats_analyzer.py"]