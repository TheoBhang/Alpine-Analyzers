FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/CyberChef/

RUN apk update \
&& apk upgrade \
&& apk add --no-cache --update \
py3-pip \
&& rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r CyberChef/requirements.txt


ENTRYPOINT ["python","CyberChef/cyberchef.py"]