#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965472' | tail -n +2)
if [[ $READ_RUN == *SRR2965472* ]]; then
     printf "SRR2965472"
else
     printf "not_found"
fi
