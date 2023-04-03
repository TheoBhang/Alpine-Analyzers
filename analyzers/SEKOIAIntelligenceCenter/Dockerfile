FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/SEKOIAIntelligenceCenter/

RUN apk update \
&& apk upgrade \
&& apk add --no-cache --update \
py3-pip \
&& rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r SEKOIAIntelligenceCenter/requirements.txt


ENTRYPOINT ["python","SEKOIAIntelligenceCenter/sekoia_intelligence_center_analyzer.py"]