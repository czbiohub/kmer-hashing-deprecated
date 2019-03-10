#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050784' | tail -n +2)
if [[ $READ_RUN == *SRR4050784* ]]; then
     printf "SRR4050784"
else
     printf "not_found"
fi
