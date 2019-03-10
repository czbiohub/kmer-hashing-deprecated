#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964198' | tail -n +2)
if [[ $READ_RUN == *SRR2964198* ]]; then
     printf "SRR2964198"
else
     printf "not_found"
fi
