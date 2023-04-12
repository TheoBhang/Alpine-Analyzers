FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/FalconCustomIOC/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache --update \
    py3-pip \
    && rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r FalconCustomIOC/requirements.txt


ENTRYPOINT ["python","FalconCustomIOC/FalconCustomIOC.py"]