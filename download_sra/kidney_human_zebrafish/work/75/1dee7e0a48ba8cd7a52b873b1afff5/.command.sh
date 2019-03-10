#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR5810710' | tail -n +2)
if [[ $READ_RUN == *SRR5810710* ]]; then
     printf "SRR5810710"
else
     printf "not_found"
fi
