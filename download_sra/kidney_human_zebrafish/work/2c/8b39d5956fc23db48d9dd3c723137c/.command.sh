#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963437' | tail -n +2)
if [[ $READ_RUN == *SRR2963437* ]]; then
     printf "SRR2963437"
else
     printf "not_found"
fi
