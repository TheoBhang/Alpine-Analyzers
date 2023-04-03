FROM python:alpine

WORKDIR /worker/

COPY ./ /worker/ProofPoint/

RUN apk update \
&& apk upgrade \
&& apk add --no-cache --update \
py3-pip \
&& rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r ProofPoint/requirements.txt


ENTRYPOINT ["python","ProofPoint/proofpoint_lookup.py"]