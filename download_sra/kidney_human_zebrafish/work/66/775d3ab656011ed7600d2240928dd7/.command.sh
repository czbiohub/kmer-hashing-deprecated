#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964668' | tail -n +2)
if [[ $READ_RUN == *SRR2964668* ]]; then
     printf "SRR2964668"
else
     printf "not_found"
fi
