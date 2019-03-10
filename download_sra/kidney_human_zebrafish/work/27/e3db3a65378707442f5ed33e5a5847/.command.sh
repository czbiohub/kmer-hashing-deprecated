#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965560' | tail -n +2)
if [[ $READ_RUN == *SRR2965560* ]]; then
     printf "SRR2965560"
else
     printf "not_found"
fi
