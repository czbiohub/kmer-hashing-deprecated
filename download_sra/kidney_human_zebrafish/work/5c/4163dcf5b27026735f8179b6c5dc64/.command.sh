#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964165' | tail -n +2)
if [[ $READ_RUN == *SRR2964165* ]]; then
     printf "SRR2964165"
else
     printf "not_found"
fi
