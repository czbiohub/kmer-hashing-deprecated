#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050405' | tail -n +2)
if [[ $READ_RUN == *SRR4050405* ]]; then
     printf "SRR4050405"
else
     printf "not_found"
fi
