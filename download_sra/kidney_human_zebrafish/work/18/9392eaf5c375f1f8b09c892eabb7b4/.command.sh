#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964290' | tail -n +2)
if [[ $READ_RUN == *SRR2964290* ]]; then
     printf "SRR2964290"
else
     printf "not_found"
fi
