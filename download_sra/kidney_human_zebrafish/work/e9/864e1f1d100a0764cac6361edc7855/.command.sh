#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965255' | tail -n +2)
if [[ $READ_RUN == *SRR2965255* ]]; then
     printf "SRR2965255"
else
     printf "not_found"
fi
