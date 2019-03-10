#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4053019' | tail -n +2)
if [[ $READ_RUN == *SRR4053019* ]]; then
     printf "SRR4053019"
else
     printf "not_found"
fi
