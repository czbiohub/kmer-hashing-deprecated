#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964955' | tail -n +2)
if [[ $READ_RUN == *SRR2964955* ]]; then
     printf "SRR2964955"
else
     printf "not_found"
fi
