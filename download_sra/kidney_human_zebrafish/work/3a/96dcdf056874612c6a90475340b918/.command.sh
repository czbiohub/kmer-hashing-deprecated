#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964156' | tail -n +2)
if [[ $READ_RUN == *SRR2964156* ]]; then
     printf "SRR2964156"
else
     printf "not_found"
fi
