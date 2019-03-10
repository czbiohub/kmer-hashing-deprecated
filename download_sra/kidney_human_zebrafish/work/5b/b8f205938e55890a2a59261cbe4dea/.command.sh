#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965202' | tail -n +2)
if [[ $READ_RUN == *SRR2965202* ]]; then
     printf "SRR2965202"
else
     printf "not_found"
fi
