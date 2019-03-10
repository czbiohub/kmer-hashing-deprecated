#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964803' | tail -n +2)
if [[ $READ_RUN == *SRR2964803* ]]; then
     printf "SRR2964803"
else
     printf "not_found"
fi
