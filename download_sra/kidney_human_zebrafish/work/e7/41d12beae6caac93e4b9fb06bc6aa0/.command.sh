#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965286' | tail -n +2)
if [[ $READ_RUN == *SRR2965286* ]]; then
     printf "SRR2965286"
else
     printf "not_found"
fi
