#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963035' | tail -n +2)
if [[ $READ_RUN == *SRR2963035* ]]; then
     printf "SRR2963035"
else
     printf "not_found"
fi
