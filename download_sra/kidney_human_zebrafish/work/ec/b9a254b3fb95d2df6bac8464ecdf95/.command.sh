#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964847' | tail -n +2)
if [[ $READ_RUN == *SRR2964847* ]]; then
     printf "SRR2964847"
else
     printf "not_found"
fi
