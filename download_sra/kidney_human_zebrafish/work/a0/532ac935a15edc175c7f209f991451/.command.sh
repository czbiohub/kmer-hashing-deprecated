#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965294' | tail -n +2)
if [[ $READ_RUN == *SRR2965294* ]]; then
     printf "SRR2965294"
else
     printf "not_found"
fi
