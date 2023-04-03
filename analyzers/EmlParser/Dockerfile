FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/EmlParser/

RUN apk update \
&& apk upgrade \
&& apk add --no-cache --update \
py3-pip \
py3-magic \
&& rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r EmlParser/requirements.txt


ENTRYPOINT ["python","EmlParser/parse.py"]