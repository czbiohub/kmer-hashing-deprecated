#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4051063' | tail -n +2)
if [[ $READ_RUN == *SRR4051063* ]]; then
     printf "SRR4051063"
else
     printf "not_found"
fi
