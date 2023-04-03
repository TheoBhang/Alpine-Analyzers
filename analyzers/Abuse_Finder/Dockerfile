FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/Abuse_Finder/

RUN apk update \
&& apk upgrade \
&& apk add --no-cache --update \
py3-pip \
&& rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r Abuse_Finder/requirements.txt


ENTRYPOINT ["python","Abuse_Finder/abusefinder.py"]