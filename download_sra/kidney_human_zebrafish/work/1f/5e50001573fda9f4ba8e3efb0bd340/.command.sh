#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965470' | tail -n +2)
if [[ $READ_RUN == *SRR2965470* ]]; then
     printf "SRR2965470"
else
     printf "not_found"
fi
