#!/bin/bash -ue
/sratoolkit.2.8.0-ubuntu64/bin/fastq-dump --readids --gzip --minReadLen 15 --split-3  SRR4052961 -O /mnt/pureScratch/olga/sra-download
