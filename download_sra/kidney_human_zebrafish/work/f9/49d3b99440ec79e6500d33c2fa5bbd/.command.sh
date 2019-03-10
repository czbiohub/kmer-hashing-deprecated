#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963600' | tail -n +2)
if [[ $READ_RUN == *SRR2963600* ]]; then
     printf "SRR2963600"
else
     printf "not_found"
fi
