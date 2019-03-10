#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963394' | tail -n +2)
if [[ $READ_RUN == *SRR2963394* ]]; then
     printf "SRR2963394"
else
     printf "not_found"
fi
