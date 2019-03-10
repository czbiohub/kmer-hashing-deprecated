#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965246' | tail -n +2)
if [[ $READ_RUN == *SRR2965246* ]]; then
     printf "SRR2965246"
else
     printf "not_found"
fi
