# for binder
# FROM andrewosh/binder-base
FROM continuumio/anaconda3
# FROM debian:stable
MAINTAINER olga.botvinnik@czbiohub.org

# ENV PACKAGES python3-dev zlib1g-dev libbz2-dev gcc git python3-setuptools g++ \
#              make ca-certificates python3-pip python3-wheel libc6-dev

# RUN apt-get update && \
#     apt-get install -y --no-install-recommends ${PACKAGES} && \
#     apt-get clean

WORKDIR /home

# ARG branch
# ENV branch ${branch:-v2.1.2}
# ARG slug
# ENV slug ${slug:-dib-lab/khmer}

# RUN pip3 install git+https://github.com/${slug}.git@${branch}

USER root

# Add user "main" because that's what is expected by this image
RUN useradd -ms /bin/bash main


ENV PACKAGES zlib1g git g++ make ca-certificates gcc zlib1g-dev libc6-dev
# ENV PACKAGES git g++ make ca-certificates zlib1g -y python3.5-dev python3.5-venv make \
#     libc6-dev g++ zlib1g-dev

### don't modify things below here for version updates etc.

WORKDIR /home

RUN apt-get update && \
    apt-get install -y --no-install-recommends ${PACKAGES} && \
    apt-get clean

RUN conda install --yes Cython bz2file pytest numpy matplotlib scipy sphinx alabaster


RUN cd /home && \
    git clone https://github.com/dib-lab/khmer.git -b master && \
    cd khmer && \
    python3 setup.py install

# Check that khmer was installed properly
RUN trim-low-abund.py --help
RUN trim-low-abund.py --version

RUN conda install --channel bioconda --yes sourmash

# Required for multiprocessing of 10x bam file
RUN pip install pathos

# ENV SOURMASH_VERSION master
RUN cd /home && \
    git clone https://github.com/dib-lab/sourmash.git && \
    cd sourmash && \
    python3 setup.py install

RUN which -a python3
RUN python3 --version
RUN sourmash info
RUN sourmash compute --help
RUN sourmash compare --help
RUN sourmash index --help



USER main
