#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965563' | tail -n +2)
if [[ $READ_RUN == *SRR2965563* ]]; then
     printf "SRR2965563"
else
     printf "not_found"
fi
