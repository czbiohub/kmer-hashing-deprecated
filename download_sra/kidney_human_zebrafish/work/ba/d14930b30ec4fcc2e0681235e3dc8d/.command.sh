#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050702' | tail -n +2)
if [[ $READ_RUN == *SRR4050702* ]]; then
     printf "SRR4050702"
else
     printf "not_found"
fi
