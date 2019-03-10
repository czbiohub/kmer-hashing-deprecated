#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963405' | tail -n +2)
if [[ $READ_RUN == *SRR2963405* ]]; then
     printf "SRR2963405"
else
     printf "not_found"
fi
