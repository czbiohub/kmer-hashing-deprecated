#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965262' | tail -n +2)
if [[ $READ_RUN == *SRR2965262* ]]; then
     printf "SRR2965262"
else
     printf "not_found"
fi
