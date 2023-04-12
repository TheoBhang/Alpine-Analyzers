FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/ZEROFOX_Takedown_request/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache --update \
    py3-pip \
    && rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r ZEROFOX_Takedown_request/requirements.txt


ENTRYPOINT ["python","ZEROFOX_Takedown_request/ZEROFOX_Takedown_request.py"]