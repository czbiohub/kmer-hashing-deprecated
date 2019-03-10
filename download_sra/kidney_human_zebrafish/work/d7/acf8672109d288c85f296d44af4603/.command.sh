#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050382' | tail -n +2)
if [[ $READ_RUN == *SRR4050382* ]]; then
     printf "SRR4050382"
else
     printf "not_found"
fi
