FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/KnowBe4/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache --update \
    py3-pip \
    && rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r KnowBe4/requirements.txt


ENTRYPOINT ["python","KnowBe4/KnowBe4.py"]