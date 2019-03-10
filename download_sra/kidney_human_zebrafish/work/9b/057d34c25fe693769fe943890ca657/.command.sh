#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965129' | tail -n +2)
if [[ $READ_RUN == *SRR2965129* ]]; then
     printf "SRR2965129"
else
     printf "not_found"
fi
