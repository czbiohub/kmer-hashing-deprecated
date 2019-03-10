#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050406' | tail -n +2)
if [[ $READ_RUN == *SRR4050406* ]]; then
     printf "SRR4050406"
else
     printf "not_found"
fi
