#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965182' | tail -n +2)
if [[ $READ_RUN == *SRR2965182* ]]; then
     printf "SRR2965182"
else
     printf "not_found"
fi
