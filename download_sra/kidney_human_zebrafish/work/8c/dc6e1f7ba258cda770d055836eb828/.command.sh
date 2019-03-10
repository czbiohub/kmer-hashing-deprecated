#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4053208' | tail -n +2)
if [[ $READ_RUN == *SRR4053208* ]]; then
     printf "SRR4053208"
else
     printf "not_found"
fi
