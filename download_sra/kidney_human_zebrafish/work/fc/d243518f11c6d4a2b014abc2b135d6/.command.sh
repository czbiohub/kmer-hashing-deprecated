#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4052814' | tail -n +2)
if [[ $READ_RUN == *SRR4052814* ]]; then
     printf "SRR4052814"
else
     printf "not_found"
fi
