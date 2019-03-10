#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965111' | tail -n +2)
if [[ $READ_RUN == *SRR2965111* ]]; then
     printf "SRR2965111"
else
     printf "not_found"
fi
