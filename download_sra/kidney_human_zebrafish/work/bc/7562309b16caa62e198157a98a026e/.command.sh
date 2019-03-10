#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963319' | tail -n +2)
if [[ $READ_RUN == *SRR2963319* ]]; then
     printf "SRR2963319"
else
     printf "not_found"
fi
