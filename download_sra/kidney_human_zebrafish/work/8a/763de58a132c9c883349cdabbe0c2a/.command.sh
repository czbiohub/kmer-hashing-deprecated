#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963916' | tail -n +2)
if [[ $READ_RUN == *SRR2963916* ]]; then
     printf "SRR2963916"
else
     printf "not_found"
fi
