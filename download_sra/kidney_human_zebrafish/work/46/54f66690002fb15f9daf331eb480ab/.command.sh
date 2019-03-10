#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965237' | tail -n +2)
if [[ $READ_RUN == *SRR2965237* ]]; then
     printf "SRR2965237"
else
     printf "not_found"
fi
