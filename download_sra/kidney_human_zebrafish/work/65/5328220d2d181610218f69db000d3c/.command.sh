#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4053147' | tail -n +2)
if [[ $READ_RUN == *SRR4053147* ]]; then
     printf "SRR4053147"
else
     printf "not_found"
fi
