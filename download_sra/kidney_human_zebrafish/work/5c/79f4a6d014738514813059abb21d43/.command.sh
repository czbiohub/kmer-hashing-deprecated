#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4052852' | tail -n +2)
if [[ $READ_RUN == *SRR4052852* ]]; then
     printf "SRR4052852"
else
     printf "not_found"
fi
