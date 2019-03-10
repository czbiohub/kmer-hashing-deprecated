#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964326' | tail -n +2)
if [[ $READ_RUN == *SRR2964326* ]]; then
     printf "SRR2964326"
else
     printf "not_found"
fi
