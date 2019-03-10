#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965572' | tail -n +2)
if [[ $READ_RUN == *SRR2965572* ]]; then
     printf "SRR2965572"
else
     printf "not_found"
fi
