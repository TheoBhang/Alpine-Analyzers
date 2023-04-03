FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/NERD/

RUN apk update \
&& apk upgrade \
&& apk add --no-cache --update \
py3-pip \
&& rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r NERD/requirements.txt


ENTRYPOINT ["python","NERD/nerd_analyzer.py"]