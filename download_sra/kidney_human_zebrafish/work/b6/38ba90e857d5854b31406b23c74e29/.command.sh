#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963922' | tail -n +2)
if [[ $READ_RUN == *SRR2963922* ]]; then
     printf "SRR2963922"
else
     printf "not_found"
fi
