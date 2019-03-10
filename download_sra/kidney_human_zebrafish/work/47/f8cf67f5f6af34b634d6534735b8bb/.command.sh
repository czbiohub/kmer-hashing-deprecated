#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965261' | tail -n +2)
if [[ $READ_RUN == *SRR2965261* ]]; then
     printf "SRR2965261"
else
     printf "not_found"
fi
