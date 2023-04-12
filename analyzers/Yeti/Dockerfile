FROM python:alpine

# Set the working directory
WORKDIR /worker/

# Copy the requirements file
COPY ./ /worker/Yeti/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache --update \
    py3-pip \
    git     \
    && rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r Yeti/requirements.txt


ENTRYPOINT ["python","Yeti/yeti.py"]