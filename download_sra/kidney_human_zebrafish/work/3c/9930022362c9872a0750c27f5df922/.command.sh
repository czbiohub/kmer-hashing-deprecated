#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965356' | tail -n +2)
if [[ $READ_RUN == *SRR2965356* ]]; then
     printf "SRR2965356"
else
     printf "not_found"
fi
