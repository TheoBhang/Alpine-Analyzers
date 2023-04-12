FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/DomainToolsIris_AddRiskyDNSTag/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache --update \
    py3-pip \
    && rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r DomainToolsIris_AddRiskyDNSTag/requirements.txt


ENTRYPOINT ["python","DomainToolsIris_AddRiskyDNSTag/domaintoolsiris_responder.py"]