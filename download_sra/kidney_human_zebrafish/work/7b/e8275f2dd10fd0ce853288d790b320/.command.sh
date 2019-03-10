#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050422' | tail -n +2)
if [[ $READ_RUN == *SRR4050422* ]]; then
     printf "SRR4050422"
else
     printf "not_found"
fi
