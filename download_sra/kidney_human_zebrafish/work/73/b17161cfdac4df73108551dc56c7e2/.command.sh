#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964040' | tail -n +2)
if [[ $READ_RUN == *SRR2964040* ]]; then
     printf "SRR2964040"
else
     printf "not_found"
fi
