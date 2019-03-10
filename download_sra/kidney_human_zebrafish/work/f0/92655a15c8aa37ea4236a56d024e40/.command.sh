#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965209' | tail -n +2)
if [[ $READ_RUN == *SRR2965209* ]]; then
     printf "SRR2965209"
else
     printf "not_found"
fi
