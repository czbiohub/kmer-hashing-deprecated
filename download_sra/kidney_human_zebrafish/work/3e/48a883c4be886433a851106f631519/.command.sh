#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965302' | tail -n +2)
if [[ $READ_RUN == *SRR2965302* ]]; then
     printf "SRR2965302"
else
     printf "not_found"
fi
