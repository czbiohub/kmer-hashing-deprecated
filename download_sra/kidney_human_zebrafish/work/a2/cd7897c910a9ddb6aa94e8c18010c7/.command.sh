#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963892' | tail -n +2)
if [[ $READ_RUN == *SRR2963892* ]]; then
     printf "SRR2963892"
else
     printf "not_found"
fi
