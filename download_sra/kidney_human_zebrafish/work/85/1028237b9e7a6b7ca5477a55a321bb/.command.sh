#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965103' | tail -n +2)
if [[ $READ_RUN == *SRR2965103* ]]; then
     printf "SRR2965103"
else
     printf "not_found"
fi
