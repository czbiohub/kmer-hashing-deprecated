#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4052832' | tail -n +2)
if [[ $READ_RUN == *SRR4052832* ]]; then
     printf "SRR4052832"
else
     printf "not_found"
fi
