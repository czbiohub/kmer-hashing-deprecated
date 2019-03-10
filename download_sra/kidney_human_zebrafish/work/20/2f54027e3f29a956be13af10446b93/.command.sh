#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4051018' | tail -n +2)
if [[ $READ_RUN == *SRR4051018* ]]; then
     printf "SRR4051018"
else
     printf "not_found"
fi
