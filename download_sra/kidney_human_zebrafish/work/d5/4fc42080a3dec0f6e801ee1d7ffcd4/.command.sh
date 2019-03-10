#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4053159' | tail -n +2)
if [[ $READ_RUN == *SRR4053159* ]]; then
     printf "SRR4053159"
else
     printf "not_found"
fi
