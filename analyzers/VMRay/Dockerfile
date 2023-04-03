FROM python:alpine

# Set the working directory
WORKDIR /worker/

# Copy the requirements file
COPY ./ /worker/VMRay/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache --update \
    py3-pip \
    && rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r VMRay/requirements.txt


ENTRYPOINT ["python","VMRay/vmray.py"]