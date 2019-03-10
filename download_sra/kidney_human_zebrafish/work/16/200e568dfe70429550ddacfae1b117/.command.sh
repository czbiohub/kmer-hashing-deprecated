#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050724' | tail -n +2)
if [[ $READ_RUN == *SRR4050724* ]]; then
     printf "SRR4050724"
else
     printf "not_found"
fi
