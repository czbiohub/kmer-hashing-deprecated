#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965347' | tail -n +2)
if [[ $READ_RUN == *SRR2965347* ]]; then
     printf "SRR2965347"
else
     printf "not_found"
fi
