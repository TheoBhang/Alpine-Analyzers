FROM python:3.7-alpine

WORKDIR /worker

COPY . /worker/FileInfo/

# Main dependencies for Manalyze installation

RUN apk update    \                                                  
    && apk upgrade  \                                                   
    && apk add --no-cache --update \
    py3-pip \
    alpine-sdk  \
    make \
    cmake \
    boost-dev \
    openssl-dev \
    build-base \
    git \                        
    && rm -rf /var/cache/apk/*

# Manalyze dependencies

RUN git clone https://github.com/JusticeRage/Manalyze.git           && \
    cd Manalyze                                                     && \
    cmake .                                                         && \
    make -j5                                                        && \
    cd bin/yara_rules                                               && \ 
    pip3 install requests                                           && \ 
    python3 update_clamav_signatures.py    

RUN apk update \
    && apk upgrade \
    && apk add --no-cache --update \
    libfuzzy2-dev \
    libffi-dev \
    py3-ssdeep \
    lapack-dev \
    blas-dev \
    py3-scikit-learn \
    gfortran \
    openblas \
    exiftool  \   
    unzip \
    curl \  
    && rm -rf /var/cache/apk/*

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r FileInfo/requirements.txt

RUN curl -SL https://github.com/mandiant/flare-floss/releases/download/v2.0.0/floss-v2.0.0-linux.zip  --output floss.zip && \
    unzip floss.zip -d /usr/bin

ENTRYPOINT ["python","FileInfo/fileinfo_analyzer.py"]