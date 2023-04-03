FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/C1fApp/

RUN apk update \
&& apk upgrade \
&& apk add --no-cache --update \
py3-pip \
&& rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r C1fApp/requirements.txt


ENTRYPOINT ["python","C1fApp/cifquery.py"]