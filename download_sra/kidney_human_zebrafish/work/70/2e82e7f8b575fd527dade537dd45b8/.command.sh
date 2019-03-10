#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963030' | tail -n +2)
if [[ $READ_RUN == *SRR2963030* ]]; then
     printf "SRR2963030"
else
     printf "not_found"
fi
