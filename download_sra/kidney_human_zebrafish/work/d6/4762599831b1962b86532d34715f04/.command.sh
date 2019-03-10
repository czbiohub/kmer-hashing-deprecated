#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963346' | tail -n +2)
if [[ $READ_RUN == *SRR2963346* ]]; then
     printf "SRR2963346"
else
     printf "not_found"
fi
