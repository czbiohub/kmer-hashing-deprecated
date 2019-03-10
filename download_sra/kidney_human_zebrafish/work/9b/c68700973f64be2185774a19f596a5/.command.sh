#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050799' | tail -n +2)
if [[ $READ_RUN == *SRR4050799* ]]; then
     printf "SRR4050799"
else
     printf "not_found"
fi
