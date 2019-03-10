#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050395' | tail -n +2)
if [[ $READ_RUN == *SRR4050395* ]]; then
     printf "SRR4050395"
else
     printf "not_found"
fi
