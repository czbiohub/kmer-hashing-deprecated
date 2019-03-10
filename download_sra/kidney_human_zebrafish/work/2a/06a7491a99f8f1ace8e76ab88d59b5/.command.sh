#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4053021' | tail -n +2)
if [[ $READ_RUN == *SRR4053021* ]]; then
     printf "SRR4053021"
else
     printf "not_found"
fi
