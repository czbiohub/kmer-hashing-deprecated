#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050670' | tail -n +2)
if [[ $READ_RUN == *SRR4050670* ]]; then
     printf "SRR4050670"
else
     printf "not_found"
fi
