#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965376' | tail -n +2)
if [[ $READ_RUN == *SRR2965376* ]]; then
     printf "SRR2965376"
else
     printf "not_found"
fi
