#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050505' | tail -n +2)
if [[ $READ_RUN == *SRR4050505* ]]; then
     printf "SRR4050505"
else
     printf "not_found"
fi
