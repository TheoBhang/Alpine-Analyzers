FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/DuoUnlockUserAccount/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache --update \
    py3-pip \
    && rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r DuoUnlockUserAccount/requirements.txt


ENTRYPOINT ["python","DuoUnlockUserAccount/duoUnlockUserAccount.py"]