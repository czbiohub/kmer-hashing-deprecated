#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050675' | tail -n +2)
if [[ $READ_RUN == *SRR4050675* ]]; then
     printf "SRR4050675"
else
     printf "not_found"
fi
