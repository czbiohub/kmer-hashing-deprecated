#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963513' | tail -n +2)
if [[ $READ_RUN == *SRR2963513* ]]; then
     printf "SRR2963513"
else
     printf "not_found"
fi
