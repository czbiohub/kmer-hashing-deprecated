#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050527' | tail -n +2)
if [[ $READ_RUN == *SRR4050527* ]]; then
     printf "SRR4050527"
else
     printf "not_found"
fi
