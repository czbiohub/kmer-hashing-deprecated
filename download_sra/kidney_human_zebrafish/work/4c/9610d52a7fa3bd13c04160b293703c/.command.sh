#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963265' | tail -n +2)
if [[ $READ_RUN == *SRR2963265* ]]; then
     printf "SRR2963265"
else
     printf "not_found"
fi
