#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2962996' | tail -n +2)
if [[ $READ_RUN == *SRR2962996* ]]; then
     printf "SRR2962996"
else
     printf "not_found"
fi
