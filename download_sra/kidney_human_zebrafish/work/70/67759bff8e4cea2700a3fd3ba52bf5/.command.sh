#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050742' | tail -n +2)
if [[ $READ_RUN == *SRR4050742* ]]; then
     printf "SRR4050742"
else
     printf "not_found"
fi
