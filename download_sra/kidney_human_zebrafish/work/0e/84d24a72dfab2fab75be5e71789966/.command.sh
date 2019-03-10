#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050575' | tail -n +2)
if [[ $READ_RUN == *SRR4050575* ]]; then
     printf "SRR4050575"
else
     printf "not_found"
fi
