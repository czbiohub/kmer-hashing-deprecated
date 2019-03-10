#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963936' | tail -n +2)
if [[ $READ_RUN == *SRR2963936* ]]; then
     printf "SRR2963936"
else
     printf "not_found"
fi
