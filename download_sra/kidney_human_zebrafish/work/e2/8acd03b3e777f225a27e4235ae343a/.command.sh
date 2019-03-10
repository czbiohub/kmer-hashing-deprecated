#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050728' | tail -n +2)
if [[ $READ_RUN == *SRR4050728* ]]; then
     printf "SRR4050728"
else
     printf "not_found"
fi
