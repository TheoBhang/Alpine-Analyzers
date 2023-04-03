FROM python:alpine

# Set the working directory
WORKDIR /worker/

# Copy the requirements file
COPY ./ /worker/Vulners/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache --update \
    py3-pip \
    && rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r Vulners/requirements.txt


ENTRYPOINT ["python","Vulners/vulners_analyzer.py"]