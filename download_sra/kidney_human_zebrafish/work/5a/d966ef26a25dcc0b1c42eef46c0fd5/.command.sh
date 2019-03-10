#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965259' | tail -n +2)
if [[ $READ_RUN == *SRR2965259* ]]; then
     printf "SRR2965259"
else
     printf "not_found"
fi
