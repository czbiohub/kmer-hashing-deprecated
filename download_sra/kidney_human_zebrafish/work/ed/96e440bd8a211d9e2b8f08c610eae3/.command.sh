#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964740' | tail -n +2)
if [[ $READ_RUN == *SRR2964740* ]]; then
     printf "SRR2964740"
else
     printf "not_found"
fi
