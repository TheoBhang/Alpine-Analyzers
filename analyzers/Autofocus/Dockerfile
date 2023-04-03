FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/Autofocus/

RUN apk update \
&& apk upgrade \
&& apk add --no-cache --update \
py3-pip \
git      \
&& rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r Autofocus/requirements.txt


ENTRYPOINT ["python","Autofocus/analyzer.py"]