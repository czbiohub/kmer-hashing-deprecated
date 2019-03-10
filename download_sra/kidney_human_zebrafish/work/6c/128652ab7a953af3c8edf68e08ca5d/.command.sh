#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964099' | tail -n +2)
if [[ $READ_RUN == *SRR2964099* ]]; then
     printf "SRR2964099"
else
     printf "not_found"
fi
