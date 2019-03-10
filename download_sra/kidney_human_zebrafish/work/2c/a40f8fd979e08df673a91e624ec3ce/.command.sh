#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964653' | tail -n +2)
if [[ $READ_RUN == *SRR2964653* ]]; then
     printf "SRR2964653"
else
     printf "not_found"
fi
