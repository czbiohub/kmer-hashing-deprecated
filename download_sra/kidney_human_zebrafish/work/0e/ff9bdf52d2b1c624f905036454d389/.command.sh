#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964935' | tail -n +2)
if [[ $READ_RUN == *SRR2964935* ]]; then
     printf "SRR2964935"
else
     printf "not_found"
fi
