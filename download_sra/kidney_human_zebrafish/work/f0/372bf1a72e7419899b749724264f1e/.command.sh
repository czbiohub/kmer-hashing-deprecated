#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963205' | tail -n +2)
if [[ $READ_RUN == *SRR2963205* ]]; then
     printf "SRR2963205"
else
     printf "not_found"
fi
