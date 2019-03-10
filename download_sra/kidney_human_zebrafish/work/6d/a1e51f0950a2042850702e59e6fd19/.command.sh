#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965192' | tail -n +2)
if [[ $READ_RUN == *SRR2965192* ]]; then
     printf "SRR2965192"
else
     printf "not_found"
fi
