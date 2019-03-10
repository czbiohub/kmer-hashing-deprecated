#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963805' | tail -n +2)
if [[ $READ_RUN == *SRR2963805* ]]; then
     printf "SRR2963805"
else
     printf "not_found"
fi
