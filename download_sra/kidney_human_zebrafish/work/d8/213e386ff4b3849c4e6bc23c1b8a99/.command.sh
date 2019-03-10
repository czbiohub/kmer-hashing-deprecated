#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964192' | tail -n +2)
if [[ $READ_RUN == *SRR2964192* ]]; then
     printf "SRR2964192"
else
     printf "not_found"
fi
