#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963874' | tail -n +2)
if [[ $READ_RUN == *SRR2963874* ]]; then
     printf "SRR2963874"
else
     printf "not_found"
fi
