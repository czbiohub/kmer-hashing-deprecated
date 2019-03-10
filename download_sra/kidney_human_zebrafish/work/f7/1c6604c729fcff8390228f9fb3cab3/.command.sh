#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963697' | tail -n +2)
if [[ $READ_RUN == *SRR2963697* ]]; then
     printf "SRR2963697"
else
     printf "not_found"
fi
