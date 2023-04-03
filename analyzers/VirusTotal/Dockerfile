FROM python:alpine

# Set the working directory
WORKDIR /worker/

# Copy the requirements file
COPY ./ /worker/VirusTotal/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache --update \
    py3-pip \
    py3-magic \
    libmagic \
    && rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r VirusTotal/requirements.txt


ENTRYPOINT ["python","VirusTotal/virustotal.py"]