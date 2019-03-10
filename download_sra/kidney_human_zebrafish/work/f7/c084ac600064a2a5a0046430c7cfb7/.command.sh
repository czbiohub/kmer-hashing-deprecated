#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR5810812' | tail -n +2)
if [[ $READ_RUN == *SRR5810812* ]]; then
     printf "SRR5810812"
else
     printf "not_found"
fi
