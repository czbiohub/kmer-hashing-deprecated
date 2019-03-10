#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964539' | tail -n +2)
if [[ $READ_RUN == *SRR2964539* ]]; then
     printf "SRR2964539"
else
     printf "not_found"
fi
