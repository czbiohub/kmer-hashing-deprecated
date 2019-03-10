#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963364' | tail -n +2)
if [[ $READ_RUN == *SRR2963364* ]]; then
     printf "SRR2963364"
else
     printf "not_found"
fi
