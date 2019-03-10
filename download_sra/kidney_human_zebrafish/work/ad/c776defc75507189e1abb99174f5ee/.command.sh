#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964189' | tail -n +2)
if [[ $READ_RUN == *SRR2964189* ]]; then
     printf "SRR2964189"
else
     printf "not_found"
fi
