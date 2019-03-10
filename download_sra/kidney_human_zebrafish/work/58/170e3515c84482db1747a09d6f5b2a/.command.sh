#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963011' | tail -n +2)
if [[ $READ_RUN == *SRR2963011* ]]; then
     printf "SRR2963011"
else
     printf "not_found"
fi
