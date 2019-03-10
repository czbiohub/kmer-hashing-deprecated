#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963066' | tail -n +2)
if [[ $READ_RUN == *SRR2963066* ]]; then
     printf "SRR2963066"
else
     printf "not_found"
fi
