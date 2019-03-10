#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965158' | tail -n +2)
if [[ $READ_RUN == *SRR2965158* ]]; then
     printf "SRR2965158"
else
     printf "not_found"
fi
