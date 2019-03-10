#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965557' | tail -n +2)
if [[ $READ_RUN == *SRR2965557* ]]; then
     printf "SRR2965557"
else
     printf "not_found"
fi
