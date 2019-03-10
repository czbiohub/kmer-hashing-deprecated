#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964404' | tail -n +2)
if [[ $READ_RUN == *SRR2964404* ]]; then
     printf "SRR2964404"
else
     printf "not_found"
fi
