#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964989' | tail -n +2)
if [[ $READ_RUN == *SRR2964989* ]]; then
     printf "SRR2964989"
else
     printf "not_found"
fi
