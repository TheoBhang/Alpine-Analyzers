FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/DomainToolsIris/

RUN apk update \
&& apk upgrade \
&& apk add --no-cache --update \
py3-pip \
git \
&& rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r DomainToolsIris/requirements.txt


ENTRYPOINT ["python","DomainToolsIris/domaintoolsiris_analyzer.py"]