#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965179' | tail -n +2)
if [[ $READ_RUN == *SRR2965179* ]]; then
     printf "SRR2965179"
else
     printf "not_found"
fi
