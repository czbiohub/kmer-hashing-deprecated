#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963543' | tail -n +2)
if [[ $READ_RUN == *SRR2963543* ]]; then
     printf "SRR2963543"
else
     printf "not_found"
fi
