#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965040' | tail -n +2)
if [[ $READ_RUN == *SRR2965040* ]]; then
     printf "SRR2965040"
else
     printf "not_found"
fi
