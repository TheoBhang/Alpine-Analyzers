FROM python:alpine

# Set the working directory
WORKDIR /worker/

# Copy the requirements file
COPY ./ /worker/WOT/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache --update \
    py3-pip \
    && rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r WOT/requirements.txt


ENTRYPOINT ["python","WOT/WOT_lookup.py"]