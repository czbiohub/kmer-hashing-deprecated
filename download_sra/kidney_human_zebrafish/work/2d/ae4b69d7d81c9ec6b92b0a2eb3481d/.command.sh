#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964761' | tail -n +2)
if [[ $READ_RUN == *SRR2964761* ]]; then
     printf "SRR2964761"
else
     printf "not_found"
fi
