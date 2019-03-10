#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965567' | tail -n +2)
if [[ $READ_RUN == *SRR2965567* ]]; then
     printf "SRR2965567"
else
     printf "not_found"
fi
