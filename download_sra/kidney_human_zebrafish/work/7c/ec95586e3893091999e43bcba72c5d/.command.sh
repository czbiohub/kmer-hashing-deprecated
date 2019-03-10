#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964487' | tail -n +2)
if [[ $READ_RUN == *SRR2964487* ]]; then
     printf "SRR2964487"
else
     printf "not_found"
fi
