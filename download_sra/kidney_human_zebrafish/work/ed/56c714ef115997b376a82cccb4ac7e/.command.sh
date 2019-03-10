#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965410' | tail -n +2)
if [[ $READ_RUN == *SRR2965410* ]]; then
     printf "SRR2965410"
else
     printf "not_found"
fi
