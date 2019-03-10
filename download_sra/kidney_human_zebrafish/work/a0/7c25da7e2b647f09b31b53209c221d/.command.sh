#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965497' | tail -n +2)
if [[ $READ_RUN == *SRR2965497* ]]; then
     printf "SRR2965497"
else
     printf "not_found"
fi
