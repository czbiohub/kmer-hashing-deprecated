# for binder
# FROM andrewosh/binder-base
FROM continuumio/anaconda3

USER root

# Add user "main" because that's what 
RUN useradd -ms /bin/bash main


ENV PACKAGES zlib1g git  g++ make ca-certificates
ENV SOURMASH_VERSION master

### don't modify things below here for version updates etc.

WORKDIR /home

RUN apt-get update && \
    apt-get install -y --no-install-recommends ${PACKAGES} && \
    apt-get clean

RUN conda install --yes cython bz2file pytest numpy matplotlib scipy sphinx alabaster


RUN cd /home && \
    git clone https://github.com/dib-lab/sourmash.git -b ${SOURMASH_VERSION} && \
    cd sourmash && \
    python setup.py install

RUN which -a python
RUN python --version

RUN cd /home && \
    git clone https://github.com/czbiohub/khmer.git -b olgabot/trim_tmp_filename && \
    cd khmer && \
    python setup.py install

USER main
