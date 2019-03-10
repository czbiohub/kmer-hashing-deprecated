#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963496' | tail -n +2)
if [[ $READ_RUN == *SRR2963496* ]]; then
     printf "SRR2963496"
else
     printf "not_found"
fi
