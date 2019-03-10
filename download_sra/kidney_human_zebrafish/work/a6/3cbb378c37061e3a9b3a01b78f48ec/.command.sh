#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4053132' | tail -n +2)
if [[ $READ_RUN == *SRR4053132* ]]; then
     printf "SRR4053132"
else
     printf "not_found"
fi
