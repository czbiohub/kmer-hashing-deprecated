#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4052966' | tail -n +2)
if [[ $READ_RUN == *SRR4052966* ]]; then
     printf "SRR4052966"
else
     printf "not_found"
fi
