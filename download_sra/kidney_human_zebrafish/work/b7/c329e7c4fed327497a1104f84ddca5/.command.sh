#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR5810801' | tail -n +2)
if [[ $READ_RUN == *SRR5810801* ]]; then
     printf "SRR5810801"
else
     printf "not_found"
fi
