#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965500' | tail -n +2)
if [[ $READ_RUN == *SRR2965500* ]]; then
     printf "SRR2965500"
else
     printf "not_found"
fi
