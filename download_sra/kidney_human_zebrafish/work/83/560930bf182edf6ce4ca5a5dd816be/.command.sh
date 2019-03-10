#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963303' | tail -n +2)
if [[ $READ_RUN == *SRR2963303* ]]; then
     printf "SRR2963303"
else
     printf "not_found"
fi
