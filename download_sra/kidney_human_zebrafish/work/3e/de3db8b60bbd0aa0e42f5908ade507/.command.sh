#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965495' | tail -n +2)
if [[ $READ_RUN == *SRR2965495* ]]; then
     printf "SRR2965495"
else
     printf "not_found"
fi
