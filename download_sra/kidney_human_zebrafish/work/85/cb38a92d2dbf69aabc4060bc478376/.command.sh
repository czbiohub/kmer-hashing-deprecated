#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965583' | tail -n +2)
if [[ $READ_RUN == *SRR2965583* ]]; then
     printf "SRR2965583"
else
     printf "not_found"
fi
