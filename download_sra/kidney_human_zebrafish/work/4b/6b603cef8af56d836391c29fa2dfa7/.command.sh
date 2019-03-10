#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963163' | tail -n +2)
if [[ $READ_RUN == *SRR2963163* ]]; then
     printf "SRR2963163"
else
     printf "not_found"
fi
