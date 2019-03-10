#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050492' | tail -n +2)
if [[ $READ_RUN == *SRR4050492* ]]; then
     printf "SRR4050492"
else
     printf "not_found"
fi
