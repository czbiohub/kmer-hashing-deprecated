#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963071' | tail -n +2)
if [[ $READ_RUN == *SRR2963071* ]]; then
     printf "SRR2963071"
else
     printf "not_found"
fi
