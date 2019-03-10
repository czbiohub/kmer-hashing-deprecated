#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965554' | tail -n +2)
if [[ $READ_RUN == *SRR2965554* ]]; then
     printf "SRR2965554"
else
     printf "not_found"
fi
