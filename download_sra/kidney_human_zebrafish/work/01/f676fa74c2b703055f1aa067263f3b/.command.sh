#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965374' | tail -n +2)
if [[ $READ_RUN == *SRR2965374* ]]; then
     printf "SRR2965374"
else
     printf "not_found"
fi
