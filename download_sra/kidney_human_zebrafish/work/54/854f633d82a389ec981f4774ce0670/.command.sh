#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965092' | tail -n +2)
if [[ $READ_RUN == *SRR2965092* ]]; then
     printf "SRR2965092"
else
     printf "not_found"
fi
